// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoItemModelImpl _$$VideoItemModelImplFromJson(Map<String, dynamic> json) =>
    _$VideoItemModelImpl(
      postId: (json['postId'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      mediaURL: json['mediaURL'] as String,
      likeCount: (json['likeCount'] as num).toInt(),
      commentCount: (json['commentCount'] as num).toInt(),
      hashTag: json['hashtag'] as String,
      thumbnailUrl: json['thumbnail'] as String,
      showCount: (json['showCount'] as num).toInt(),
      hide: json['hide'] as bool,
      liked: json['liked'] as bool,
      emoji: (json['emoji'] as num).toInt(),
      hashTagID: (json['hashtagID'] as num?)?.toInt(),
      userName: json['username'] as String?,
      photo: json['photo'] as String?,
      like: (json['like'] as num?)?.toInt() ?? 0,
      laugh: (json['laugh'] as num?)?.toInt() ?? 0,
      shocked: (json['shocked'] as num?)?.toInt() ?? 0,
      cry: (json['cry'] as num?)?.toInt() ?? 0,
      angry: (json['angry'] as num?)?.toInt() ?? 0,
      videoData: json['videoData'] == null
          ? null
          : const Uint8ListConverter()
              .fromJson(json['videoData'] as List<int>?),
      thumbnailData: json['thumbnailData'] == null
          ? null
          : const Uint8ListConverter()
              .fromJson(json['thumbnailData'] as List<int>?),
    );

Map<String, dynamic> _$$VideoItemModelImplToJson(
        _$VideoItemModelImpl instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'userId': instance.userId,
      'mediaURL': instance.mediaURL,
      'likeCount': instance.likeCount,
      'commentCount': instance.commentCount,
      'hashtag': instance.hashTag,
      'thumbnail': instance.thumbnailUrl,
      'showCount': instance.showCount,
      'hide': instance.hide,
      'liked': instance.liked,
      'emoji': instance.emoji,
      'hashtagID': instance.hashTagID,
      'username': instance.userName,
      'photo': instance.photo,
      'like': instance.like,
      'laugh': instance.laugh,
      'shocked': instance.shocked,
      'cry': instance.cry,
      'angry': instance.angry,
      'videoData': const Uint8ListConverter().toJson(instance.videoData),
      'thumbnailData':
          const Uint8ListConverter().toJson(instance.thumbnailData),
    };
