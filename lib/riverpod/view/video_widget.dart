import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:preload_video/model/video_item_model.dart';
import 'package:preload_video/model/video_state.dart';
import 'package:preload_video/model/video_status_model.dart';
import 'package:preload_video/riverpod/view_model/explore_view_model.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends ConsumerStatefulWidget {
  const VideoWidget({
    required this.videoModel,
    required this.videoController,
    super.key,
    this.photo,
  });

  final VideoItemModel videoModel;
  final VideoPlayerController videoController;
  final String? photo;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _VideoWidgetState();
}

class _VideoWidgetState extends ConsumerState<VideoWidget> {
  void handleOnTap() {
    if (widget.videoController.value.isPlaying) {
      ref.read(videoStateProvider.notifier).changeState(
            const VideoStatusModel(videoStatus: VideoStatus.pause),
          );
    } else {
      ref.read(videoStateProvider.notifier).changeState(
            const VideoStatusModel(videoStatus: VideoStatus.play),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    final isVolumeMuted = ValueNotifier(false);

    ref.listen<VideoStatusModel>(videoStateProvider, (prev, next) {
      if (!widget.videoController.value.isInitialized) {
        return;
      }
      if (next.videoStatus == VideoStatus.play) {
        widget.videoController.play();
      } else if (next.videoStatus == VideoStatus.pause) {
        widget.videoController.pause();
      }
    });
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                final explore = ref.watch(exploreProvider);
                print('model : ${explore.videoModelsList.length}');
                print(
                    'controller : ${explore.videoControllersList.length}');
              },
              child: const Text('PRESS'))
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Align(
            child: GestureDetector(
              onLongPress: () {
                widget.videoController.pause();
                setState(() {});
              },
              onLongPressUp: () {
                widget.videoController.play();
                setState(() {});
              },
              onDoubleTap: () {
                isVolumeMuted.value = !isVolumeMuted.value;
                if (isVolumeMuted.value) {
                  widget.videoController.setVolume(0);
                } else {
                  widget.videoController.setVolume(1);
                }
              },
              onTap: handleOnTap,
              child: Center(
                child: Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  color: Colors.black,
                  child: Stack(
                    children: [
                      if (widget.videoController.value.isInitialized)
                        Align(
                          child: AspectRatio(
                            aspectRatio:
                                widget.videoController.value.aspectRatio,
                            child: FractionallySizedBox(
                                widthFactor: 1.106,
                                heightFactor: 1.106,
                                child:
                                    VideoPlayer(widget.videoController)),
                          ),
                        ),
                      const SizedBox(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
