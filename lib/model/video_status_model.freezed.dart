// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoStatusModel _$VideoStatusModelFromJson(Map<String, dynamic> json) {
  return _VideoStatusModel.fromJson(json);
}

/// @nodoc
mixin _$VideoStatusModel {
  VideoStatus get videoStatus => throw _privateConstructorUsedError;

  /// Serializes this VideoStatusModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoStatusModelCopyWith<VideoStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoStatusModelCopyWith<$Res> {
  factory $VideoStatusModelCopyWith(
          VideoStatusModel value, $Res Function(VideoStatusModel) then) =
      _$VideoStatusModelCopyWithImpl<$Res, VideoStatusModel>;
  @useResult
  $Res call({VideoStatus videoStatus});
}

/// @nodoc
class _$VideoStatusModelCopyWithImpl<$Res, $Val extends VideoStatusModel>
    implements $VideoStatusModelCopyWith<$Res> {
  _$VideoStatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoStatus = null,
  }) {
    return _then(_value.copyWith(
      videoStatus: null == videoStatus
          ? _value.videoStatus
          : videoStatus // ignore: cast_nullable_to_non_nullable
              as VideoStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoStatusModelImplCopyWith<$Res>
    implements $VideoStatusModelCopyWith<$Res> {
  factory _$$VideoStatusModelImplCopyWith(_$VideoStatusModelImpl value,
          $Res Function(_$VideoStatusModelImpl) then) =
      __$$VideoStatusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VideoStatus videoStatus});
}

/// @nodoc
class __$$VideoStatusModelImplCopyWithImpl<$Res>
    extends _$VideoStatusModelCopyWithImpl<$Res, _$VideoStatusModelImpl>
    implements _$$VideoStatusModelImplCopyWith<$Res> {
  __$$VideoStatusModelImplCopyWithImpl(_$VideoStatusModelImpl _value,
      $Res Function(_$VideoStatusModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoStatus = null,
  }) {
    return _then(_$VideoStatusModelImpl(
      videoStatus: null == videoStatus
          ? _value.videoStatus
          : videoStatus // ignore: cast_nullable_to_non_nullable
              as VideoStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoStatusModelImpl implements _VideoStatusModel {
  const _$VideoStatusModelImpl({required this.videoStatus});

  factory _$VideoStatusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoStatusModelImplFromJson(json);

  @override
  final VideoStatus videoStatus;

  @override
  String toString() {
    return 'VideoStatusModel(videoStatus: $videoStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoStatusModelImpl &&
            (identical(other.videoStatus, videoStatus) ||
                other.videoStatus == videoStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, videoStatus);

  /// Create a copy of VideoStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoStatusModelImplCopyWith<_$VideoStatusModelImpl> get copyWith =>
      __$$VideoStatusModelImplCopyWithImpl<_$VideoStatusModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoStatusModelImplToJson(
      this,
    );
  }
}

abstract class _VideoStatusModel implements VideoStatusModel {
  const factory _VideoStatusModel({required final VideoStatus videoStatus}) =
      _$VideoStatusModelImpl;

  factory _VideoStatusModel.fromJson(Map<String, dynamic> json) =
      _$VideoStatusModelImpl.fromJson;

  @override
  VideoStatus get videoStatus;

  /// Create a copy of VideoStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoStatusModelImplCopyWith<_$VideoStatusModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
