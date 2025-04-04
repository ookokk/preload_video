import 'package:preload_video/model/video_item_model.dart';
import 'package:video_player/video_player.dart';

class ExploreViewModelState {
  ExploreViewModelState({
    required this.videoControllersList,
    required this.videoModelsList,
    required this.focusedIndex,
    required this.exploreApiIndex,
  });

  final List<VideoPlayerController> videoControllersList;
  final List<VideoItemModel> videoModelsList;
  final int focusedIndex;
  final int exploreApiIndex;

  ExploreViewModelState copyWith({
    List<VideoPlayerController>? videoControllersList,
    List<VideoItemModel>? videoModelsList,
    int? focusedIndex,
    int? exploreApiIndex,
  }) {
    return ExploreViewModelState(
      videoControllersList:
          videoControllersList ?? this.videoControllersList,
      focusedIndex: focusedIndex ?? this.focusedIndex,
      exploreApiIndex: exploreApiIndex ?? this.exploreApiIndex,
      videoModelsList: videoModelsList ?? this.videoModelsList,
    );
  }
}
