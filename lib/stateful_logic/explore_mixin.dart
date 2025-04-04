import 'package:flutter/material.dart';
import 'package:preload_video/core/flows_service.dart';
import 'package:preload_video/model/video_item_model.dart';
import 'package:preload_video/model/video_url_function.dart';
import 'package:preload_video/stateful_logic/stateful_explore_view.dart';
import 'package:video_player/video_player.dart';

mixin ExploreMixin on State<StatefulExploreView> {
  List<VideoItemModel> videoModelsList = [];
  List<VideoPlayerController> controllersList = [];
  int currentIndex = 0;
  int exploreApiIndex = 0;

  @override
  void initState() {
    ensureInit();
    super.initState();
  }

  Future<void> ensureInit() async {
    final videos = await fetchPage(0);
    exploreApiIndex = 0;
    if (mounted && videos.isNotEmpty) {
      setState(() {});
    }
  }

  void setVideoController(List<VideoItemModel> videos,
      {bool prepend = false}) {
    setState(() {
      for (final video in videos) {
        final url = VideoUrlFunction().build(video.userId, video.mediaURL);
        final controller =
            VideoPlayerController.networkUrl(Uri.parse(url));
        if (prepend) {
          videoModelsList.insert(0, video);
          controllersList.insert(0, controller);
        } else {
          videoModelsList.add(video);
          controllersList.add(controller);
        }
      }

      while (videoModelsList.length > 15) {
        if (prepend) {
          controllersList.removeLast().dispose();
          videoModelsList.removeLast();
        } else {
          controllersList.removeAt(0).dispose();
          videoModelsList.removeAt(0);
        }
      }
    });
  }

  void onVideoFocusChanged(int index) {
    currentIndex = index;

    if (index == 3 && exploreApiIndex > 1) {
      fetchAndAppend(exploreApiIndex - 1, prepend: true);
      exploreApiIndex -= 1;
    } else if (index == 12) {
      fetchAndAppend(exploreApiIndex + 1);
      exploreApiIndex += 1;
    }

    playControllerAtIndex(index);
    initializeControllerAtIndex(index - 1);
    initializeControllerAtIndex(index + 1);
  }

  Future<void> fetchAndAppend(int page, {bool prepend = false}) async {
    final res = await FlowsService.instance.explore(page);
    if (res['success'] as bool) {
      final resultList = res['result'] as List<dynamic>;
      final result = resultList
          .map((e) => VideoItemModel.fromJson(e as Map<String, dynamic>))
          .toList();
      setVideoController(result, prepend: prepend);
    }
  }

  void stopControllerAtIndex(int index) {
    if (videoModelsList.length > index && index >= 0) {
      controllersList[index]
        ..pause()
        ..seekTo(Duration.zero);
    }
  }

  void disposeControllerAtIndex(int index) {
    if (videoModelsList.length > index && index >= 0) {
      controllersList[index].dispose();
    }
  }

  void playControllerAtIndex(int index) {
    if (videoModelsList.length > index && index >= 0) {
      final controller = controllersList[index];
      if (controller.value.isInitialized) {
        controller
          ..play()
          ..setLooping(true);
      } else {
        initializeControllerAtIndex(index).then((_) {
          controllersList[index]
            ..play()
            ..setLooping(true);
        });
      }
    }
  }

  Future<void> initializeControllerAtIndex(int index) async {
    if (videoModelsList.length > index && index >= 0) {
      final controller = VideoPlayerController.networkUrl(Uri.parse(
        VideoUrlFunction().build(
          videoModelsList[index].userId,
          videoModelsList[index].mediaURL,
        ),
      ));
      controllersList[index] = controller;
      await controller.initialize();
    }
  }

  Future<List<VideoItemModel>> fetchPage(int page) async {
    final res = await FlowsService.instance.explore(page);
    try {
      if (res['success'] as bool) {
        final resultList = res['result'] as List<dynamic>;
        final result = resultList
            .map((e) => VideoItemModel.fromJson(e as Map<String, dynamic>))
            .toList();
        setVideoController(result);
        return result;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }

  void playPrevious(int index) {
    stopControllerAtIndex(index + 1);
    disposeControllerAtIndex(index + 2);
    playControllerAtIndex(index);
    initializeControllerAtIndex(index - 1);
  }

  void playNext(int index) {
    stopControllerAtIndex(index - 1);
    disposeControllerAtIndex(index - 2);
    playControllerAtIndex(index);
    initializeControllerAtIndex(index + 1);
  }
}
