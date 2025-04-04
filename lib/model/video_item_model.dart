// ignore_for_file: invalid_annotation_target

import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_player/video_player.dart';

part 'video_item_model.freezed.dart';
part 'video_item_model.g.dart';

@freezed
class VideoItemModel with _$VideoItemModel {
  factory VideoItemModel({
    required int postId,
    required int userId,
    required String mediaURL,
    required int likeCount,
    required int commentCount,
    @JsonKey(name: 'hashtag') required String hashTag,
    @JsonKey(name: 'thumbnail') required String thumbnailUrl,
    required int showCount,
    required bool hide,
    required bool liked,
    required int emoji,
    @JsonKey(name: 'hashtagID') int? hashTagID,
    @JsonKey(name: 'username') String? userName,
    String? photo,
    @Default(0) int? like,
    @Default(0) int? laugh,
    @Default(0) int? shocked,
    @Default(0) int? cry,
    @Default(0) int? angry,
    @JsonKey(includeToJson: false, includeFromJson: false)
    @Default(null)
    VideoPlayerController? videoController,
    @Default(null) @Uint8ListConverter() Uint8List? videoData,
    @Default(null) @Uint8ListConverter() Uint8List? thumbnailData,
  }) = _VideoItemModel;

  factory VideoItemModel.fromJson(Map<String, dynamic> json) =>
      _$VideoItemModelFromJson(json);
}

class Uint8ListConverter implements JsonConverter<Uint8List?, List<int>?> {
  const Uint8ListConverter();

  @override
  Uint8List? fromJson(List<int>? json) {
    return json == null ? null : Uint8List.fromList(json);
  }

  @override
  List<int>? toJson(Uint8List? object) {
    return object?.toList();
  }
}
