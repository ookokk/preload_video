import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:preload_video/bloc/preload_state.dart';
import 'package:preload_video/core/flows_service.dart';
import 'package:preload_video/model/video_item_model.dart';
import 'package:preload_video/model/video_url_function.dart';
import 'package:video_player/video_player.dart';

class PreloadCubit extends Cubit<PreloadState> {
  PreloadCubit() : super(PreloadState.initial()) {
    print('🟢 PreloadCubit oluşturuldu');
    _loadInitialVideos();
  }

  Future<void> onPageChanged(int index) async {

    final previousIndex = state.focusedIndex;
    if (index == previousIndex) {
      return;
    }
    _stopControllerAtIndex(previousIndex);
    _disposeControllerAtIndex(
        index > previousIndex ? previousIndex - 1 : previousIndex + 1);
    _playControllerAtIndex(index);
    await _initializeControllerAtIndex(index + 1);
    await _initializeControllerAtIndex(index - 1);
    emit(state.copyWith(focusedIndex: index));
    if (index % 5 == 0 && index >= state.videos.length - 2) {
      await _loadMoreVideos();
    }
  }

  Future<void> _loadInitialVideos() async {
    print('🚀 İlk videolar yükleniyor...');
    emit(state.copyWith(isLoading: true));
    final videos =
        await FlowsService.instance.explore(state.apiExplorePage);
    print(
        '📦 ${videos.length} video bulundu. Kontroller oluşturuluyor...');
    final controllers = await _createControllers(videos);
    emit(state.copyWith(
      videos: videos,
      controllers: controllers,
      apiExplorePage: state.apiExplorePage + 1,
      isLoading: false,
    ));
    print('✅ İlk videolar ve kontroller yüklendi');
    await _initializeControllerAtIndex(0);
    _playControllerAtIndex(0);
  }

  Future<List<VideoPlayerController>> _createControllers(
      List<VideoItemModel> videos) async {
    final controllers = <VideoPlayerController>[];
    double totalSizeMB = 0;

    for (final video in videos) {
      final url = VideoUrlFunction().build(video.userId, video.mediaURL);
      final controller = VideoPlayerController.networkUrl(Uri.parse(url));
      await controller.initialize();

      controllers.add(controller);
      final duration = controller.value.duration.inSeconds;
      final resolution = controller.value.size;

      // Ortalama bitrate: 1.5 Mbps = 187.5 KB/s
      const estimatedBitrateKBps = 187.5;
      final estimatedSizeMB = (duration * estimatedBitrateKBps) / 1024;

      totalSizeMB += estimatedSizeMB;

      print(
          '📹 Video init: ${video.mediaURL} | Süre: ${duration}s | Çözünürlük: ${resolution.width.toInt()}x${resolution.height.toInt()} | Tahmini boyut: ${estimatedSizeMB.toStringAsFixed(2)} MB');
    }

    print("📊 Tüm initialized controller'ların toplam tahmini boyutu: ${totalSizeMB.toStringAsFixed(2)} MB");

    return controllers;
  }


  Future<void> playNext() async {
    final newIndex = state.focusedIndex + 1;
    print('⏭️ Sonraki video oynatılıyor: $newIndex');

    _playNext(newIndex);
    emit(state.copyWith(focusedIndex: newIndex));

    if (newIndex % 4 == 0 && newIndex >= state.videos.length - 2) {
      print('📥 Yeni videolar yükleniyor (önceden)');
      await _loadMoreVideos();
    }
  }

  Future<void> playPrevious() async {
    final newIndex = state.focusedIndex - 1;
    if (newIndex >= 0) {
      print('⏮️ Önceki video oynatılıyor: $newIndex');
      _playPrevious(newIndex);
      emit(state.copyWith(focusedIndex: newIndex));
    } else {
      print('🚫 Önceki index negatif, işlem yapılmadı');
    }
  }

  Future<void> _loadMoreVideos() async {
    if (state.isLoading) {
      print('⚠️ Zaten yükleniyor, bekleniyor...');
      return;
    }

    print('📦 Daha fazla video yükleniyor...');

    emit(state.copyWith(isLoading: true));
    final videos =
        await FlowsService.instance.explore(state.apiExplorePage);

    final controllers = await _createControllers(videos);

    emit(state.copyWith(
      videos: [...state.videos, ...videos],
      controllers: [...state.controllers, ...controllers],
      apiExplorePage: state.apiExplorePage + 1,
      isLoading: false,
    ));
    print('✅ ${videos.length} yeni video eklendi');
  }

  void _playNext(int index) {
    print('▶️ _playNext çağrıldı: $index');
    _stopControllerAtIndex(index - 1);
    _disposeControllerAtIndex(index - 2);
    _playControllerAtIndex(index);
    _initializeControllerAtIndex(index + 1);
  }

  void _playPrevious(int index) {
    print('◀️ _playPrevious çağrıldı: $index');
    _stopControllerAtIndex(index + 1);
    _disposeControllerAtIndex(index + 2);
    _playControllerAtIndex(index);
    _initializeControllerAtIndex(index - 1);
  }

  Future<void> _initializeControllerAtIndex(int index) async {
    if (index >= 0 && index < state.videos.length) {
      final url = VideoUrlFunction().build(
        state.videos[index].userId,
        state.videos[index].mediaURL,
      );
      final controller = VideoPlayerController.networkUrl(Uri.parse(url));
      await controller.initialize();
      final newControllers = [...state.controllers];
      while (newControllers.length < index) {
        newControllers.add(VideoPlayerController.networkUrl(Uri.parse(''))); // Dummy
      }
      if (newControllers.length == index) {
        newControllers.add(controller);
      } else {
        newControllers[index] = controller;
      }

      emit(state.copyWith(controllers: newControllers));
      print('✅ Controller initialize edildi: $index');
    } else {
      print('⚠️ Controller initialize edilmedi: index $index geçersiz');
    }
  }


  void _playControllerAtIndex(int index) {
    if (index >= 0 && index < state.controllers.length) {
      state.controllers[index].play();
      print('▶️ Video oynatılıyor: $index');
    } else {
      print('⚠️ Oynatılacak controller bulunamadı: $index');
    }
  }

  void _stopControllerAtIndex(int index) {
    if (index >= 0 && index < state.controllers.length) {
      state.controllers[index]
        ..pause()
        ..seekTo(Duration.zero);
      print('⏸️ Video durduruldu ve sıfırlandı: $index');
    } else {
      print('⚠️ Durdurulacak controller yok: $index');
    }
  }

  void _disposeControllerAtIndex(int index) {
    if (index >= 0 && index < state.controllers.length) {
      state.controllers[index].dispose();
      final updated = [...state.controllers]..removeAt(index);
      emit(state.copyWith(controllers: updated));
      print('🗑️ Controller dispose edildi ve silindi: $index');
    } else {
      print('⚠️ Silinecek controller yok: $index');
    }
  }

  @override
  Future<void> close() {
    print(
        "❌ PreloadCubit kapatılıyor. Tüm controller'lar dispose ediliyor...");
    for (final controller in state.controllers) {
      controller.dispose();
    }
    return super.close();
  }
}
