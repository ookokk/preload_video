import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:preload_video/model/video_status_model.dart';

enum VideoStatus { notDetermined, play, pause, dispose }

class VideoStateNotifier extends StateNotifier<VideoStatusModel> {
  VideoStateNotifier(this.ref)
      : super(const VideoStatusModel(
            videoStatus: VideoStatus.notDetermined));
  final Ref ref;

  // ignore: use_setters_to_change_properties
  void changeState(VideoStatusModel status) {
    state = status;
  }
}

final videoStateProvider =
    StateNotifierProvider<VideoStateNotifier, VideoStatusModel>((ref) {
  return VideoStateNotifier(ref);
});
