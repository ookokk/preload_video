part of 'preload_bloc.dart';

@freezed
class PreloadEvent with _$PreloadEvent {
  const factory PreloadEvent.started() = _Started;
  const factory PreloadEvent.loadMoreVideos() = _LoadMoreVideos;
  const factory PreloadEvent.onVideoIndexChanged(
    int index,
  ) = _OnVideoIndexChanged;
  const factory PreloadEvent.focusChanged(int index) = _FocusChanged;
  const factory PreloadEvent.setControllers(
    List<VideoPlayerController> controller,
  ) = _SetControllers;
}
