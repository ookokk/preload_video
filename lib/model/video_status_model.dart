import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:preload_video/model/video_state.dart';

part 'video_status_model.freezed.dart';
part 'video_status_model.g.dart';

@freezed
class VideoStatusModel with _$VideoStatusModel {
  const factory VideoStatusModel({
    required VideoStatus videoStatus,
  }) = _VideoStatusModel;

  factory VideoStatusModel.fromJson(Map<String, dynamic> json) =>
      _$VideoStatusModelFromJson(json);
}
