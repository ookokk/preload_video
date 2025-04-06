import 'package:equatable/equatable.dart';
import 'package:preload_video/model/video_item_model.dart';
import 'package:video_player/video_player.dart';

class PreloadState extends Equatable {
  const PreloadState({
    required this.videos,
    required this.controllers,
    required this.focusedIndex,
    required this.apiExplorePage,
    required this.isLoading,
  });

  factory PreloadState.initial() => const PreloadState(
        focusedIndex: 0,
        apiExplorePage: 1,
        videos: [],
        controllers: [],
        isLoading: false,
      );
  final List<VideoItemModel> videos;
  final List<VideoPlayerController> controllers;
  final int focusedIndex;
  final int apiExplorePage;
  final bool isLoading;

  PreloadState copyWith({
    List<VideoItemModel>? videos,
    List<VideoPlayerController>? controllers,
    int? focusedIndex,
    int? apiExplorePage,
    bool? isLoading,
  }) {
    return PreloadState(
      videos: videos ?? this.videos,
      controllers: controllers ?? this.controllers,
      focusedIndex: focusedIndex ?? this.focusedIndex,
      apiExplorePage: apiExplorePage ?? this.apiExplorePage,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object?> get props =>
      [videos, controllers, focusedIndex, apiExplorePage, isLoading];
}
