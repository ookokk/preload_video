part of 'preload_bloc.dart';

@freezed
class PreloadState with _$PreloadState {
  factory PreloadState({
    required List<VideoItemModel> videos,
    required List<VideoPlayerController> controllers,
    required int focusedIndex,
    required int apiExplorePage,
    required bool isLoading,
  }) = _PreloadState;

  factory PreloadState.initial() => PreloadState(
        focusedIndex: 0,
        apiExplorePage: 0,
        videos: [],
        isLoading: false,
        controllers: [],
      );
}
