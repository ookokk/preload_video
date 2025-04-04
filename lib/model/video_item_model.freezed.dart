// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoItemModel _$VideoItemModelFromJson(Map<String, dynamic> json) {
  return _VideoItemModel.fromJson(json);
}

/// @nodoc
mixin _$VideoItemModel {
  int get postId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get mediaURL => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;
  int get commentCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'hashtag')
  String get hashTag => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail')
  String get thumbnailUrl => throw _privateConstructorUsedError;
  int get showCount => throw _privateConstructorUsedError;
  bool get hide => throw _privateConstructorUsedError;
  bool get liked => throw _privateConstructorUsedError;
  int get emoji => throw _privateConstructorUsedError;
  @JsonKey(name: 'hashtagID')
  int? get hashTagID => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get userName => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  int? get like => throw _privateConstructorUsedError;
  int? get laugh => throw _privateConstructorUsedError;
  int? get shocked => throw _privateConstructorUsedError;
  int? get cry => throw _privateConstructorUsedError;
  int? get angry => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  VideoPlayerController? get videoController =>
      throw _privateConstructorUsedError;
  @Uint8ListConverter()
  Uint8List? get videoData => throw _privateConstructorUsedError;
  @Uint8ListConverter()
  Uint8List? get thumbnailData => throw _privateConstructorUsedError;

  /// Serializes this VideoItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoItemModelCopyWith<VideoItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoItemModelCopyWith<$Res> {
  factory $VideoItemModelCopyWith(
          VideoItemModel value, $Res Function(VideoItemModel) then) =
      _$VideoItemModelCopyWithImpl<$Res, VideoItemModel>;
  @useResult
  $Res call(
      {int postId,
      int userId,
      String mediaURL,
      int likeCount,
      int commentCount,
      @JsonKey(name: 'hashtag') String hashTag,
      @JsonKey(name: 'thumbnail') String thumbnailUrl,
      int showCount,
      bool hide,
      bool liked,
      int emoji,
      @JsonKey(name: 'hashtagID') int? hashTagID,
      @JsonKey(name: 'username') String? userName,
      String? photo,
      int? like,
      int? laugh,
      int? shocked,
      int? cry,
      int? angry,
      @JsonKey(includeToJson: false, includeFromJson: false)
      VideoPlayerController? videoController,
      @Uint8ListConverter() Uint8List? videoData,
      @Uint8ListConverter() Uint8List? thumbnailData});
}

/// @nodoc
class _$VideoItemModelCopyWithImpl<$Res, $Val extends VideoItemModel>
    implements $VideoItemModelCopyWith<$Res> {
  _$VideoItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? userId = null,
    Object? mediaURL = null,
    Object? likeCount = null,
    Object? commentCount = null,
    Object? hashTag = null,
    Object? thumbnailUrl = null,
    Object? showCount = null,
    Object? hide = null,
    Object? liked = null,
    Object? emoji = null,
    Object? hashTagID = freezed,
    Object? userName = freezed,
    Object? photo = freezed,
    Object? like = freezed,
    Object? laugh = freezed,
    Object? shocked = freezed,
    Object? cry = freezed,
    Object? angry = freezed,
    Object? videoController = freezed,
    Object? videoData = freezed,
    Object? thumbnailData = freezed,
  }) {
    return _then(_value.copyWith(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      mediaURL: null == mediaURL
          ? _value.mediaURL
          : mediaURL // ignore: cast_nullable_to_non_nullable
              as String,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      hashTag: null == hashTag
          ? _value.hashTag
          : hashTag // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      showCount: null == showCount
          ? _value.showCount
          : showCount // ignore: cast_nullable_to_non_nullable
              as int,
      hide: null == hide
          ? _value.hide
          : hide // ignore: cast_nullable_to_non_nullable
              as bool,
      liked: null == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as int,
      hashTagID: freezed == hashTagID
          ? _value.hashTagID
          : hashTagID // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      like: freezed == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as int?,
      laugh: freezed == laugh
          ? _value.laugh
          : laugh // ignore: cast_nullable_to_non_nullable
              as int?,
      shocked: freezed == shocked
          ? _value.shocked
          : shocked // ignore: cast_nullable_to_non_nullable
              as int?,
      cry: freezed == cry
          ? _value.cry
          : cry // ignore: cast_nullable_to_non_nullable
              as int?,
      angry: freezed == angry
          ? _value.angry
          : angry // ignore: cast_nullable_to_non_nullable
              as int?,
      videoController: freezed == videoController
          ? _value.videoController
          : videoController // ignore: cast_nullable_to_non_nullable
              as VideoPlayerController?,
      videoData: freezed == videoData
          ? _value.videoData
          : videoData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      thumbnailData: freezed == thumbnailData
          ? _value.thumbnailData
          : thumbnailData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoItemModelImplCopyWith<$Res>
    implements $VideoItemModelCopyWith<$Res> {
  factory _$$VideoItemModelImplCopyWith(_$VideoItemModelImpl value,
          $Res Function(_$VideoItemModelImpl) then) =
      __$$VideoItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int postId,
      int userId,
      String mediaURL,
      int likeCount,
      int commentCount,
      @JsonKey(name: 'hashtag') String hashTag,
      @JsonKey(name: 'thumbnail') String thumbnailUrl,
      int showCount,
      bool hide,
      bool liked,
      int emoji,
      @JsonKey(name: 'hashtagID') int? hashTagID,
      @JsonKey(name: 'username') String? userName,
      String? photo,
      int? like,
      int? laugh,
      int? shocked,
      int? cry,
      int? angry,
      @JsonKey(includeToJson: false, includeFromJson: false)
      VideoPlayerController? videoController,
      @Uint8ListConverter() Uint8List? videoData,
      @Uint8ListConverter() Uint8List? thumbnailData});
}

/// @nodoc
class __$$VideoItemModelImplCopyWithImpl<$Res>
    extends _$VideoItemModelCopyWithImpl<$Res, _$VideoItemModelImpl>
    implements _$$VideoItemModelImplCopyWith<$Res> {
  __$$VideoItemModelImplCopyWithImpl(
      _$VideoItemModelImpl _value, $Res Function(_$VideoItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? userId = null,
    Object? mediaURL = null,
    Object? likeCount = null,
    Object? commentCount = null,
    Object? hashTag = null,
    Object? thumbnailUrl = null,
    Object? showCount = null,
    Object? hide = null,
    Object? liked = null,
    Object? emoji = null,
    Object? hashTagID = freezed,
    Object? userName = freezed,
    Object? photo = freezed,
    Object? like = freezed,
    Object? laugh = freezed,
    Object? shocked = freezed,
    Object? cry = freezed,
    Object? angry = freezed,
    Object? videoController = freezed,
    Object? videoData = freezed,
    Object? thumbnailData = freezed,
  }) {
    return _then(_$VideoItemModelImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      mediaURL: null == mediaURL
          ? _value.mediaURL
          : mediaURL // ignore: cast_nullable_to_non_nullable
              as String,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      hashTag: null == hashTag
          ? _value.hashTag
          : hashTag // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      showCount: null == showCount
          ? _value.showCount
          : showCount // ignore: cast_nullable_to_non_nullable
              as int,
      hide: null == hide
          ? _value.hide
          : hide // ignore: cast_nullable_to_non_nullable
              as bool,
      liked: null == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as int,
      hashTagID: freezed == hashTagID
          ? _value.hashTagID
          : hashTagID // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      like: freezed == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as int?,
      laugh: freezed == laugh
          ? _value.laugh
          : laugh // ignore: cast_nullable_to_non_nullable
              as int?,
      shocked: freezed == shocked
          ? _value.shocked
          : shocked // ignore: cast_nullable_to_non_nullable
              as int?,
      cry: freezed == cry
          ? _value.cry
          : cry // ignore: cast_nullable_to_non_nullable
              as int?,
      angry: freezed == angry
          ? _value.angry
          : angry // ignore: cast_nullable_to_non_nullable
              as int?,
      videoController: freezed == videoController
          ? _value.videoController
          : videoController // ignore: cast_nullable_to_non_nullable
              as VideoPlayerController?,
      videoData: freezed == videoData
          ? _value.videoData
          : videoData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      thumbnailData: freezed == thumbnailData
          ? _value.thumbnailData
          : thumbnailData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoItemModelImpl implements _VideoItemModel {
  _$VideoItemModelImpl(
      {required this.postId,
      required this.userId,
      required this.mediaURL,
      required this.likeCount,
      required this.commentCount,
      @JsonKey(name: 'hashtag') required this.hashTag,
      @JsonKey(name: 'thumbnail') required this.thumbnailUrl,
      required this.showCount,
      required this.hide,
      required this.liked,
      required this.emoji,
      @JsonKey(name: 'hashtagID') this.hashTagID,
      @JsonKey(name: 'username') this.userName,
      this.photo,
      this.like = 0,
      this.laugh = 0,
      this.shocked = 0,
      this.cry = 0,
      this.angry = 0,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.videoController = null,
      @Uint8ListConverter() this.videoData = null,
      @Uint8ListConverter() this.thumbnailData = null});

  factory _$VideoItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoItemModelImplFromJson(json);

  @override
  final int postId;
  @override
  final int userId;
  @override
  final String mediaURL;
  @override
  final int likeCount;
  @override
  final int commentCount;
  @override
  @JsonKey(name: 'hashtag')
  final String hashTag;
  @override
  @JsonKey(name: 'thumbnail')
  final String thumbnailUrl;
  @override
  final int showCount;
  @override
  final bool hide;
  @override
  final bool liked;
  @override
  final int emoji;
  @override
  @JsonKey(name: 'hashtagID')
  final int? hashTagID;
  @override
  @JsonKey(name: 'username')
  final String? userName;
  @override
  final String? photo;
  @override
  @JsonKey()
  final int? like;
  @override
  @JsonKey()
  final int? laugh;
  @override
  @JsonKey()
  final int? shocked;
  @override
  @JsonKey()
  final int? cry;
  @override
  @JsonKey()
  final int? angry;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final VideoPlayerController? videoController;
  @override
  @JsonKey()
  @Uint8ListConverter()
  final Uint8List? videoData;
  @override
  @JsonKey()
  @Uint8ListConverter()
  final Uint8List? thumbnailData;

  @override
  String toString() {
    return 'VideoItemModel(postId: $postId, userId: $userId, mediaURL: $mediaURL, likeCount: $likeCount, commentCount: $commentCount, hashTag: $hashTag, thumbnailUrl: $thumbnailUrl, showCount: $showCount, hide: $hide, liked: $liked, emoji: $emoji, hashTagID: $hashTagID, userName: $userName, photo: $photo, like: $like, laugh: $laugh, shocked: $shocked, cry: $cry, angry: $angry, videoController: $videoController, videoData: $videoData, thumbnailData: $thumbnailData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoItemModelImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.mediaURL, mediaURL) ||
                other.mediaURL == mediaURL) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.hashTag, hashTag) || other.hashTag == hashTag) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.showCount, showCount) ||
                other.showCount == showCount) &&
            (identical(other.hide, hide) || other.hide == hide) &&
            (identical(other.liked, liked) || other.liked == liked) &&
            (identical(other.emoji, emoji) || other.emoji == emoji) &&
            (identical(other.hashTagID, hashTagID) ||
                other.hashTagID == hashTagID) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.like, like) || other.like == like) &&
            (identical(other.laugh, laugh) || other.laugh == laugh) &&
            (identical(other.shocked, shocked) || other.shocked == shocked) &&
            (identical(other.cry, cry) || other.cry == cry) &&
            (identical(other.angry, angry) || other.angry == angry) &&
            (identical(other.videoController, videoController) ||
                other.videoController == videoController) &&
            const DeepCollectionEquality().equals(other.videoData, videoData) &&
            const DeepCollectionEquality()
                .equals(other.thumbnailData, thumbnailData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        postId,
        userId,
        mediaURL,
        likeCount,
        commentCount,
        hashTag,
        thumbnailUrl,
        showCount,
        hide,
        liked,
        emoji,
        hashTagID,
        userName,
        photo,
        like,
        laugh,
        shocked,
        cry,
        angry,
        videoController,
        const DeepCollectionEquality().hash(videoData),
        const DeepCollectionEquality().hash(thumbnailData)
      ]);

  /// Create a copy of VideoItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoItemModelImplCopyWith<_$VideoItemModelImpl> get copyWith =>
      __$$VideoItemModelImplCopyWithImpl<_$VideoItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoItemModelImplToJson(
      this,
    );
  }
}

abstract class _VideoItemModel implements VideoItemModel {
  factory _VideoItemModel(
          {required final int postId,
          required final int userId,
          required final String mediaURL,
          required final int likeCount,
          required final int commentCount,
          @JsonKey(name: 'hashtag') required final String hashTag,
          @JsonKey(name: 'thumbnail') required final String thumbnailUrl,
          required final int showCount,
          required final bool hide,
          required final bool liked,
          required final int emoji,
          @JsonKey(name: 'hashtagID') final int? hashTagID,
          @JsonKey(name: 'username') final String? userName,
          final String? photo,
          final int? like,
          final int? laugh,
          final int? shocked,
          final int? cry,
          final int? angry,
          @JsonKey(includeToJson: false, includeFromJson: false)
          final VideoPlayerController? videoController,
          @Uint8ListConverter() final Uint8List? videoData,
          @Uint8ListConverter() final Uint8List? thumbnailData}) =
      _$VideoItemModelImpl;

  factory _VideoItemModel.fromJson(Map<String, dynamic> json) =
      _$VideoItemModelImpl.fromJson;

  @override
  int get postId;
  @override
  int get userId;
  @override
  String get mediaURL;
  @override
  int get likeCount;
  @override
  int get commentCount;
  @override
  @JsonKey(name: 'hashtag')
  String get hashTag;
  @override
  @JsonKey(name: 'thumbnail')
  String get thumbnailUrl;
  @override
  int get showCount;
  @override
  bool get hide;
  @override
  bool get liked;
  @override
  int get emoji;
  @override
  @JsonKey(name: 'hashtagID')
  int? get hashTagID;
  @override
  @JsonKey(name: 'username')
  String? get userName;
  @override
  String? get photo;
  @override
  int? get like;
  @override
  int? get laugh;
  @override
  int? get shocked;
  @override
  int? get cry;
  @override
  int? get angry;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  VideoPlayerController? get videoController;
  @override
  @Uint8ListConverter()
  Uint8List? get videoData;
  @override
  @Uint8ListConverter()
  Uint8List? get thumbnailData;

  /// Create a copy of VideoItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoItemModelImplCopyWith<_$VideoItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
