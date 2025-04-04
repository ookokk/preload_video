import 'dart:async';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:preload_video/core/flows_service.dart';
import 'package:preload_video/model/video_item_model.dart';
import 'package:preload_video/model/video_url_function.dart';
import 'package:video_player/video_player.dart';

part 'preload_bloc.freezed.dart';
part 'preload_event.dart';
part 'preload_state.dart';

class PreloadBloc extends Bloc<PreloadEvent, PreloadState> {
  PreloadBloc() : super(PreloadState.initial()) {
    on<_Started>(_onStarted);
    on<_LoadMoreVideos>(_onLoadMoreVideos);
    on<_OnVideoIndexChanged>(_onVideoIndexChanged);
    on<_FocusChanged>((event, emit) {
      emit(state.copyWith(focusedIndex: event.index));
    });
    on<_SetControllers>((event, emit) {
      emit(state.copyWith(controllers: event.controller));
    });
  }

  Future<void> _onStarted(
      _Started event, Emitter<PreloadState> emit) async {
    final res = await FlowsService.instance.explore(0);
    if (res['success'] as bool) {
      final resultList = res['result'] as List<dynamic>;
      final result = resultList
          .map((e) => VideoItemModel.fromJson(e as Map<String, dynamic>))
          .toList();
      final controllers = await _createControllers(result);

      emit(state.copyWith(videos: result, controllers: controllers));
    }
  }

  Future<void> _onLoadMoreVideos(
      _LoadMoreVideos event, Emitter<PreloadState> emit) async {
    final currentLength = state.videos.length;
    final result = await FlowsService.instance.explore(currentLength % 5);
    if (result['success'] as bool) {
      final resultList = result['result'] as List<dynamic>;
      final newVideos = resultList
          .map((e) => VideoItemModel.fromJson(e as Map<String, dynamic>))
          .toList();
      final newControllers = await _createControllers(newVideos);
      final updatedVideos = [...state.videos, ...newVideos];
      final updatedControllers = [...state.controllers, ...newControllers];

      emit(state.copyWith(
          videos: updatedVideos, controllers: updatedControllers));
    }
  }

  Future<void> _onVideoIndexChanged(
      _OnVideoIndexChanged event, Emitter<PreloadState> emit) async {
    if (event.index > state.focusedIndex) {
      _playNext(event.index);
    } else {
      _playPrevious(event.index);
    }
    emit(state.copyWith(focusedIndex: event.index));
  }

  Future<List<VideoPlayerController>> _createControllers(
      List<VideoItemModel> videos) async {
    final controllers = <VideoPlayerController>[];

    for (final video in videos) {
      final controller = VideoPlayerController.networkUrl(
        Uri.parse(VideoUrlFunction().build(93, video.mediaURL)),
      );
      await controller.initialize();
      controllers.add(controller);
      log('🚀 Controller initialized for: ${video.mediaURL}');
    }

    return controllers;
  }

  void _playNext(int index) {
    _stopControllerAtIndex(index - 1);
    _disposeControllerAtIndex(index - 2);
    _playControllerAtIndex(index);
    _initializeControllerAtIndex(index + 1);
  }

  void _playPrevious(int index) {
    _stopControllerAtIndex(index + 1);
    _disposeControllerAtIndex(index + 2);
    _playControllerAtIndex(index);
    _initializeControllerAtIndex(index - 1);
  }

  Future<void> _initializeControllerAtIndex(int index) async {
    if (index >= 0 && index < state.videos.length) {
      final controller = VideoPlayerController.networkUrl(
        Uri.parse(
            VideoUrlFunction().build(93, state.videos[index].mediaURL)),
      );
      await controller.initialize();
      state.controllers.insert(index, controller);
      log('🚀 INITIALIZED $index');
    }
  }

  void _playControllerAtIndex(int index) {
    if (index >= 0 && index < state.controllers.length) {
      state.controllers[index].play();
      log('🚀 PLAYING $index');
    }
  }

  void _stopControllerAtIndex(int index) {
    if (index >= 0 && index < state.controllers.length) {
      state.controllers[index]
        ..pause()
        ..seekTo(Duration.zero);
      log('🚀 STOPPED $index');
    }
  }

  void _disposeControllerAtIndex(int index) {
    if (index >= 0 && index < state.controllers.length) {
      state.controllers[index].dispose();
      state.controllers.removeAt(index);
      log('🚀 DISPOSED $index');
    }
  }
}
