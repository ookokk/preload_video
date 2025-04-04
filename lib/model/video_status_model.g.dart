// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoStatusModelImpl _$$VideoStatusModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VideoStatusModelImpl(
      videoStatus: $enumDecode(_$VideoStatusEnumMap, json['videoStatus']),
    );

Map<String, dynamic> _$$VideoStatusModelImplToJson(
        _$VideoStatusModelImpl instance) =>
    <String, dynamic>{
      'videoStatus': _$VideoStatusEnumMap[instance.videoStatus]!,
    };

const _$VideoStatusEnumMap = {
  VideoStatus.notDetermined: 'notDetermined',
  VideoStatus.play: 'play',
  VideoStatus.pause: 'pause',
  VideoStatus.dispose: 'dispose',
};
