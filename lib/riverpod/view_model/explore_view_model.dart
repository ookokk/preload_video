import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:preload_video/core/flows_service.dart';
import 'package:preload_video/model/video_item_model.dart';
import 'package:preload_video/model/video_url_function.dart';
import 'package:preload_video/riverpod/view_model/explore_state.dart';
import 'package:video_player/video_player.dart';

class ExploreViewModel extends StateNotifier<ExploreViewModelState> {
  ExploreViewModel()
      : super(ExploreViewModelState(
          videoControllersList: [],
          videoModelsList: [],
          focusedIndex: 0,
          exploreApiIndex: 0,
        ));
  void setVideoController(List<VideoItemModel> videos,
      {bool prepend = false}) {
    final newVideoModelsList = <VideoItemModel>[...state.videoModelsList];
    final newControllers = <VideoPlayerController>[
      ...state.videoControllersList
    ];

    for (final video in videos) {
      final url = VideoUrlFunction().build(video.userId, video.mediaURL);
      final controller = VideoPlayerController.networkUrl(Uri.parse(url));
      if (prepend) {
        newVideoModelsList.insert(0, video);
        newControllers.insert(0, controller);
      } else {
        newVideoModelsList.add(video);
        newControllers.add(controller);
      }
    }

    while (newVideoModelsList.length > 15) {
      if (prepend) {
        newControllers.removeLast().dispose();
        newVideoModelsList.removeLast();
      } else {
        newControllers.removeAt(0).dispose();
        newVideoModelsList.removeAt(0);
      }
    }

    state = state.copyWith(
      videoModelsList: newVideoModelsList,
      videoControllersList: newControllers,
    );
  }

  void onVideoFocusChanged(int index) {
    state = state.copyWith(focusedIndex: index);

    if (index == 3 && state.exploreApiIndex > 1) {
      fetchAndAppend(state.exploreApiIndex - 1, prepend: true);
      state = state.copyWith(exploreApiIndex: state.exploreApiIndex - 1);
    } else if (index == 12) {
      fetchAndAppend(state.exploreApiIndex + 1);
      state = state.copyWith(exploreApiIndex: state.exploreApiIndex + 1);
    }

    playControllerAtIndex(index);
    initializeControllerAtIndex(index - 1);
    initializeControllerAtIndex(index + 1);
  }

  Future<void> fetchAndAppend(int page, {bool prepend = false}) async {
    final result = await FlowsService.instance.explore(page);
    setVideoController(result, prepend: prepend);
  }

  void stopControllerAtIndex(int index) {
    if (state.videoModelsList.length > index && index >= 0) {
      state.videoControllersList[index]
        ..pause()
        ..seekTo(Duration.zero);
    }
  }

  void disposeControllerAtIndex(int index) {
    if (state.videoModelsList.length > index && index >= 0) {
      state.videoControllersList[index].dispose();
    }
  }

  void playControllerAtIndex(int index) {
    if (state.videoModelsList.length > index && index >= 0) {
      final controller = state.videoControllersList[index];
      if (controller.value.isInitialized) {
        controller
          ..play()
          ..setLooping(true);
      } else {
        initializeControllerAtIndex(index).then((value) {
          state.videoControllersList[index].play();
          state.videoControllersList[index].setLooping(true);
        });
      }
    }
  }

  Future<void> initializeControllerAtIndex(int index) async {
    if (index < 0 || index >= state.videoModelsList.length) return;

    final video = state.videoModelsList[index];
    final url = VideoUrlFunction().build(video.userId, video.mediaURL);
    final controller = VideoPlayerController.networkUrl(Uri.parse(url));
    await controller.initialize();

    final newControllers = [...state.videoControllersList];
    if (index < newControllers.length) {
      await newControllers[index].dispose();
      newControllers[index] = controller;
    } else {
      newControllers.add(controller);
    }
    state = state.copyWith(videoControllersList: newControllers);
  }

  Future<List<VideoItemModel>> fetchPage(int page) async {
    final result = await FlowsService.instance.explore(page);
    setVideoController(result);
    await initializeControllerAtIndex(0);
    await initializeControllerAtIndex(1);
    playControllerAtIndex(0);
    return result;
  }

  void playPrevious(int index) {
    stopControllerAtIndex(index + 1);
    //  disposeControllerAtIndex(index + 2);
    playControllerAtIndex(index);
    initializeControllerAtIndex(index - 1);
  }

  void playNext(int index) {
    stopControllerAtIndex(index - 1);
    //disposeControllerAtIndex(index - 2);
    playControllerAtIndex(index);
    initializeControllerAtIndex(index + 1);
  }
}

final exploreProvider =
    StateNotifierProvider<ExploreViewModel, ExploreViewModelState>(
        (ref) => ExploreViewModel());

final exploreFutureProvider =
    FutureProvider.autoDispose.family<bool, int?>((ref, page) async {
  try {
    final result =
        await ref.read(exploreProvider.notifier).fetchPage(page ?? 1);
    ref.read(exploreProvider.notifier).setVideoController(result);
    return true;
  } catch (e) {
    return false;
  }
});
