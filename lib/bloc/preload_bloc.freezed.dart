// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preload_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PreloadEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadMoreVideos,
    required TResult Function(int index) onVideoIndexChanged,
    required TResult Function(int index) focusChanged,
    required TResult Function(List<VideoPlayerController> controller)
        setControllers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadMoreVideos,
    TResult? Function(int index)? onVideoIndexChanged,
    TResult? Function(int index)? focusChanged,
    TResult? Function(List<VideoPlayerController> controller)? setControllers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMoreVideos,
    TResult Function(int index)? onVideoIndexChanged,
    TResult Function(int index)? focusChanged,
    TResult Function(List<VideoPlayerController> controller)? setControllers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMoreVideos value) loadMoreVideos,
    required TResult Function(_OnVideoIndexChanged value) onVideoIndexChanged,
    required TResult Function(_FocusChanged value) focusChanged,
    required TResult Function(_SetControllers value) setControllers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadMoreVideos value)? loadMoreVideos,
    TResult? Function(_OnVideoIndexChanged value)? onVideoIndexChanged,
    TResult? Function(_FocusChanged value)? focusChanged,
    TResult? Function(_SetControllers value)? setControllers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMoreVideos value)? loadMoreVideos,
    TResult Function(_OnVideoIndexChanged value)? onVideoIndexChanged,
    TResult Function(_FocusChanged value)? focusChanged,
    TResult Function(_SetControllers value)? setControllers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreloadEventCopyWith<$Res> {
  factory $PreloadEventCopyWith(
          PreloadEvent value, $Res Function(PreloadEvent) then) =
      _$PreloadEventCopyWithImpl<$Res, PreloadEvent>;
}

/// @nodoc
class _$PreloadEventCopyWithImpl<$Res, $Val extends PreloadEvent>
    implements $PreloadEventCopyWith<$Res> {
  _$PreloadEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreloadEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$PreloadEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreloadEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'PreloadEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadMoreVideos,
    required TResult Function(int index) onVideoIndexChanged,
    required TResult Function(int index) focusChanged,
    required TResult Function(List<VideoPlayerController> controller)
        setControllers,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadMoreVideos,
    TResult? Function(int index)? onVideoIndexChanged,
    TResult? Function(int index)? focusChanged,
    TResult? Function(List<VideoPlayerController> controller)? setControllers,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMoreVideos,
    TResult Function(int index)? onVideoIndexChanged,
    TResult Function(int index)? focusChanged,
    TResult Function(List<VideoPlayerController> controller)? setControllers,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMoreVideos value) loadMoreVideos,
    required TResult Function(_OnVideoIndexChanged value) onVideoIndexChanged,
    required TResult Function(_FocusChanged value) focusChanged,
    required TResult Function(_SetControllers value) setControllers,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadMoreVideos value)? loadMoreVideos,
    TResult? Function(_OnVideoIndexChanged value)? onVideoIndexChanged,
    TResult? Function(_FocusChanged value)? focusChanged,
    TResult? Function(_SetControllers value)? setControllers,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMoreVideos value)? loadMoreVideos,
    TResult Function(_OnVideoIndexChanged value)? onVideoIndexChanged,
    TResult Function(_FocusChanged value)? focusChanged,
    TResult Function(_SetControllers value)? setControllers,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PreloadEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoadMoreVideosImplCopyWith<$Res> {
  factory _$$LoadMoreVideosImplCopyWith(_$LoadMoreVideosImpl value,
          $Res Function(_$LoadMoreVideosImpl) then) =
      __$$LoadMoreVideosImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreVideosImplCopyWithImpl<$Res>
    extends _$PreloadEventCopyWithImpl<$Res, _$LoadMoreVideosImpl>
    implements _$$LoadMoreVideosImplCopyWith<$Res> {
  __$$LoadMoreVideosImplCopyWithImpl(
      _$LoadMoreVideosImpl _value, $Res Function(_$LoadMoreVideosImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreloadEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadMoreVideosImpl implements _LoadMoreVideos {
  const _$LoadMoreVideosImpl();

  @override
  String toString() {
    return 'PreloadEvent.loadMoreVideos()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreVideosImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadMoreVideos,
    required TResult Function(int index) onVideoIndexChanged,
    required TResult Function(int index) focusChanged,
    required TResult Function(List<VideoPlayerController> controller)
        setControllers,
  }) {
    return loadMoreVideos();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadMoreVideos,
    TResult? Function(int index)? onVideoIndexChanged,
    TResult? Function(int index)? focusChanged,
    TResult? Function(List<VideoPlayerController> controller)? setControllers,
  }) {
    return loadMoreVideos?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMoreVideos,
    TResult Function(int index)? onVideoIndexChanged,
    TResult Function(int index)? focusChanged,
    TResult Function(List<VideoPlayerController> controller)? setControllers,
    required TResult orElse(),
  }) {
    if (loadMoreVideos != null) {
      return loadMoreVideos();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMoreVideos value) loadMoreVideos,
    required TResult Function(_OnVideoIndexChanged value) onVideoIndexChanged,
    required TResult Function(_FocusChanged value) focusChanged,
    required TResult Function(_SetControllers value) setControllers,
  }) {
    return loadMoreVideos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadMoreVideos value)? loadMoreVideos,
    TResult? Function(_OnVideoIndexChanged value)? onVideoIndexChanged,
    TResult? Function(_FocusChanged value)? focusChanged,
    TResult? Function(_SetControllers value)? setControllers,
  }) {
    return loadMoreVideos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMoreVideos value)? loadMoreVideos,
    TResult Function(_OnVideoIndexChanged value)? onVideoIndexChanged,
    TResult Function(_FocusChanged value)? focusChanged,
    TResult Function(_SetControllers value)? setControllers,
    required TResult orElse(),
  }) {
    if (loadMoreVideos != null) {
      return loadMoreVideos(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreVideos implements PreloadEvent {
  const factory _LoadMoreVideos() = _$LoadMoreVideosImpl;
}

/// @nodoc
abstract class _$$OnVideoIndexChangedImplCopyWith<$Res> {
  factory _$$OnVideoIndexChangedImplCopyWith(_$OnVideoIndexChangedImpl value,
          $Res Function(_$OnVideoIndexChangedImpl) then) =
      __$$OnVideoIndexChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$OnVideoIndexChangedImplCopyWithImpl<$Res>
    extends _$PreloadEventCopyWithImpl<$Res, _$OnVideoIndexChangedImpl>
    implements _$$OnVideoIndexChangedImplCopyWith<$Res> {
  __$$OnVideoIndexChangedImplCopyWithImpl(_$OnVideoIndexChangedImpl _value,
      $Res Function(_$OnVideoIndexChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreloadEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$OnVideoIndexChangedImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnVideoIndexChangedImpl implements _OnVideoIndexChanged {
  const _$OnVideoIndexChangedImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'PreloadEvent.onVideoIndexChanged(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnVideoIndexChangedImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of PreloadEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnVideoIndexChangedImplCopyWith<_$OnVideoIndexChangedImpl> get copyWith =>
      __$$OnVideoIndexChangedImplCopyWithImpl<_$OnVideoIndexChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadMoreVideos,
    required TResult Function(int index) onVideoIndexChanged,
    required TResult Function(int index) focusChanged,
    required TResult Function(List<VideoPlayerController> controller)
        setControllers,
  }) {
    return onVideoIndexChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadMoreVideos,
    TResult? Function(int index)? onVideoIndexChanged,
    TResult? Function(int index)? focusChanged,
    TResult? Function(List<VideoPlayerController> controller)? setControllers,
  }) {
    return onVideoIndexChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMoreVideos,
    TResult Function(int index)? onVideoIndexChanged,
    TResult Function(int index)? focusChanged,
    TResult Function(List<VideoPlayerController> controller)? setControllers,
    required TResult orElse(),
  }) {
    if (onVideoIndexChanged != null) {
      return onVideoIndexChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMoreVideos value) loadMoreVideos,
    required TResult Function(_OnVideoIndexChanged value) onVideoIndexChanged,
    required TResult Function(_FocusChanged value) focusChanged,
    required TResult Function(_SetControllers value) setControllers,
  }) {
    return onVideoIndexChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadMoreVideos value)? loadMoreVideos,
    TResult? Function(_OnVideoIndexChanged value)? onVideoIndexChanged,
    TResult? Function(_FocusChanged value)? focusChanged,
    TResult? Function(_SetControllers value)? setControllers,
  }) {
    return onVideoIndexChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMoreVideos value)? loadMoreVideos,
    TResult Function(_OnVideoIndexChanged value)? onVideoIndexChanged,
    TResult Function(_FocusChanged value)? focusChanged,
    TResult Function(_SetControllers value)? setControllers,
    required TResult orElse(),
  }) {
    if (onVideoIndexChanged != null) {
      return onVideoIndexChanged(this);
    }
    return orElse();
  }
}

abstract class _OnVideoIndexChanged implements PreloadEvent {
  const factory _OnVideoIndexChanged(final int index) =
      _$OnVideoIndexChangedImpl;

  int get index;

  /// Create a copy of PreloadEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnVideoIndexChangedImplCopyWith<_$OnVideoIndexChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FocusChangedImplCopyWith<$Res> {
  factory _$$FocusChangedImplCopyWith(
          _$FocusChangedImpl value, $Res Function(_$FocusChangedImpl) then) =
      __$$FocusChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$FocusChangedImplCopyWithImpl<$Res>
    extends _$PreloadEventCopyWithImpl<$Res, _$FocusChangedImpl>
    implements _$$FocusChangedImplCopyWith<$Res> {
  __$$FocusChangedImplCopyWithImpl(
      _$FocusChangedImpl _value, $Res Function(_$FocusChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreloadEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$FocusChangedImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FocusChangedImpl implements _FocusChanged {
  const _$FocusChangedImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'PreloadEvent.focusChanged(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FocusChangedImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of PreloadEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FocusChangedImplCopyWith<_$FocusChangedImpl> get copyWith =>
      __$$FocusChangedImplCopyWithImpl<_$FocusChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadMoreVideos,
    required TResult Function(int index) onVideoIndexChanged,
    required TResult Function(int index) focusChanged,
    required TResult Function(List<VideoPlayerController> controller)
        setControllers,
  }) {
    return focusChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadMoreVideos,
    TResult? Function(int index)? onVideoIndexChanged,
    TResult? Function(int index)? focusChanged,
    TResult? Function(List<VideoPlayerController> controller)? setControllers,
  }) {
    return focusChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMoreVideos,
    TResult Function(int index)? onVideoIndexChanged,
    TResult Function(int index)? focusChanged,
    TResult Function(List<VideoPlayerController> controller)? setControllers,
    required TResult orElse(),
  }) {
    if (focusChanged != null) {
      return focusChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMoreVideos value) loadMoreVideos,
    required TResult Function(_OnVideoIndexChanged value) onVideoIndexChanged,
    required TResult Function(_FocusChanged value) focusChanged,
    required TResult Function(_SetControllers value) setControllers,
  }) {
    return focusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadMoreVideos value)? loadMoreVideos,
    TResult? Function(_OnVideoIndexChanged value)? onVideoIndexChanged,
    TResult? Function(_FocusChanged value)? focusChanged,
    TResult? Function(_SetControllers value)? setControllers,
  }) {
    return focusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMoreVideos value)? loadMoreVideos,
    TResult Function(_OnVideoIndexChanged value)? onVideoIndexChanged,
    TResult Function(_FocusChanged value)? focusChanged,
    TResult Function(_SetControllers value)? setControllers,
    required TResult orElse(),
  }) {
    if (focusChanged != null) {
      return focusChanged(this);
    }
    return orElse();
  }
}

abstract class _FocusChanged implements PreloadEvent {
  const factory _FocusChanged(final int index) = _$FocusChangedImpl;

  int get index;

  /// Create a copy of PreloadEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FocusChangedImplCopyWith<_$FocusChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetControllersImplCopyWith<$Res> {
  factory _$$SetControllersImplCopyWith(_$SetControllersImpl value,
          $Res Function(_$SetControllersImpl) then) =
      __$$SetControllersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<VideoPlayerController> controller});
}

/// @nodoc
class __$$SetControllersImplCopyWithImpl<$Res>
    extends _$PreloadEventCopyWithImpl<$Res, _$SetControllersImpl>
    implements _$$SetControllersImplCopyWith<$Res> {
  __$$SetControllersImplCopyWithImpl(
      _$SetControllersImpl _value, $Res Function(_$SetControllersImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreloadEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = null,
  }) {
    return _then(_$SetControllersImpl(
      null == controller
          ? _value._controller
          : controller // ignore: cast_nullable_to_non_nullable
              as List<VideoPlayerController>,
    ));
  }
}

/// @nodoc

class _$SetControllersImpl implements _SetControllers {
  const _$SetControllersImpl(final List<VideoPlayerController> controller)
      : _controller = controller;

  final List<VideoPlayerController> _controller;
  @override
  List<VideoPlayerController> get controller {
    if (_controller is EqualUnmodifiableListView) return _controller;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_controller);
  }

  @override
  String toString() {
    return 'PreloadEvent.setControllers(controller: $controller)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetControllersImpl &&
            const DeepCollectionEquality()
                .equals(other._controller, _controller));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_controller));

  /// Create a copy of PreloadEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetControllersImplCopyWith<_$SetControllersImpl> get copyWith =>
      __$$SetControllersImplCopyWithImpl<_$SetControllersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadMoreVideos,
    required TResult Function(int index) onVideoIndexChanged,
    required TResult Function(int index) focusChanged,
    required TResult Function(List<VideoPlayerController> controller)
        setControllers,
  }) {
    return setControllers(controller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadMoreVideos,
    TResult? Function(int index)? onVideoIndexChanged,
    TResult? Function(int index)? focusChanged,
    TResult? Function(List<VideoPlayerController> controller)? setControllers,
  }) {
    return setControllers?.call(controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadMoreVideos,
    TResult Function(int index)? onVideoIndexChanged,
    TResult Function(int index)? focusChanged,
    TResult Function(List<VideoPlayerController> controller)? setControllers,
    required TResult orElse(),
  }) {
    if (setControllers != null) {
      return setControllers(controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMoreVideos value) loadMoreVideos,
    required TResult Function(_OnVideoIndexChanged value) onVideoIndexChanged,
    required TResult Function(_FocusChanged value) focusChanged,
    required TResult Function(_SetControllers value) setControllers,
  }) {
    return setControllers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadMoreVideos value)? loadMoreVideos,
    TResult? Function(_OnVideoIndexChanged value)? onVideoIndexChanged,
    TResult? Function(_FocusChanged value)? focusChanged,
    TResult? Function(_SetControllers value)? setControllers,
  }) {
    return setControllers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMoreVideos value)? loadMoreVideos,
    TResult Function(_OnVideoIndexChanged value)? onVideoIndexChanged,
    TResult Function(_FocusChanged value)? focusChanged,
    TResult Function(_SetControllers value)? setControllers,
    required TResult orElse(),
  }) {
    if (setControllers != null) {
      return setControllers(this);
    }
    return orElse();
  }
}

abstract class _SetControllers implements PreloadEvent {
  const factory _SetControllers(final List<VideoPlayerController> controller) =
      _$SetControllersImpl;

  List<VideoPlayerController> get controller;

  /// Create a copy of PreloadEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetControllersImplCopyWith<_$SetControllersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PreloadState {
  List<VideoItemModel> get videos => throw _privateConstructorUsedError;
  List<VideoPlayerController> get controllers =>
      throw _privateConstructorUsedError;
  int get focusedIndex => throw _privateConstructorUsedError;
  int get apiExplorePage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of PreloadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PreloadStateCopyWith<PreloadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreloadStateCopyWith<$Res> {
  factory $PreloadStateCopyWith(
          PreloadState value, $Res Function(PreloadState) then) =
      _$PreloadStateCopyWithImpl<$Res, PreloadState>;
  @useResult
  $Res call(
      {List<VideoItemModel> videos,
      List<VideoPlayerController> controllers,
      int focusedIndex,
      int apiExplorePage,
      bool isLoading});
}

/// @nodoc
class _$PreloadStateCopyWithImpl<$Res, $Val extends PreloadState>
    implements $PreloadStateCopyWith<$Res> {
  _$PreloadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreloadState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videos = null,
    Object? controllers = null,
    Object? focusedIndex = null,
    Object? apiExplorePage = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<VideoItemModel>,
      controllers: null == controllers
          ? _value.controllers
          : controllers // ignore: cast_nullable_to_non_nullable
              as List<VideoPlayerController>,
      focusedIndex: null == focusedIndex
          ? _value.focusedIndex
          : focusedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      apiExplorePage: null == apiExplorePage
          ? _value.apiExplorePage
          : apiExplorePage // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreloadStateImplCopyWith<$Res>
    implements $PreloadStateCopyWith<$Res> {
  factory _$$PreloadStateImplCopyWith(
          _$PreloadStateImpl value, $Res Function(_$PreloadStateImpl) then) =
      __$$PreloadStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<VideoItemModel> videos,
      List<VideoPlayerController> controllers,
      int focusedIndex,
      int apiExplorePage,
      bool isLoading});
}

/// @nodoc
class __$$PreloadStateImplCopyWithImpl<$Res>
    extends _$PreloadStateCopyWithImpl<$Res, _$PreloadStateImpl>
    implements _$$PreloadStateImplCopyWith<$Res> {
  __$$PreloadStateImplCopyWithImpl(
      _$PreloadStateImpl _value, $Res Function(_$PreloadStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreloadState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videos = null,
    Object? controllers = null,
    Object? focusedIndex = null,
    Object? apiExplorePage = null,
    Object? isLoading = null,
  }) {
    return _then(_$PreloadStateImpl(
      videos: null == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<VideoItemModel>,
      controllers: null == controllers
          ? _value._controllers
          : controllers // ignore: cast_nullable_to_non_nullable
              as List<VideoPlayerController>,
      focusedIndex: null == focusedIndex
          ? _value.focusedIndex
          : focusedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      apiExplorePage: null == apiExplorePage
          ? _value.apiExplorePage
          : apiExplorePage // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PreloadStateImpl implements _PreloadState {
  _$PreloadStateImpl(
      {required final List<VideoItemModel> videos,
      required final List<VideoPlayerController> controllers,
      required this.focusedIndex,
      required this.apiExplorePage,
      required this.isLoading})
      : _videos = videos,
        _controllers = controllers;

  final List<VideoItemModel> _videos;
  @override
  List<VideoItemModel> get videos {
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videos);
  }

  final List<VideoPlayerController> _controllers;
  @override
  List<VideoPlayerController> get controllers {
    if (_controllers is EqualUnmodifiableListView) return _controllers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_controllers);
  }

  @override
  final int focusedIndex;
  @override
  final int apiExplorePage;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'PreloadState(videos: $videos, controllers: $controllers, focusedIndex: $focusedIndex, apiExplorePage: $apiExplorePage, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreloadStateImpl &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            const DeepCollectionEquality()
                .equals(other._controllers, _controllers) &&
            (identical(other.focusedIndex, focusedIndex) ||
                other.focusedIndex == focusedIndex) &&
            (identical(other.apiExplorePage, apiExplorePage) ||
                other.apiExplorePage == apiExplorePage) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_videos),
      const DeepCollectionEquality().hash(_controllers),
      focusedIndex,
      apiExplorePage,
      isLoading);

  /// Create a copy of PreloadState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreloadStateImplCopyWith<_$PreloadStateImpl> get copyWith =>
      __$$PreloadStateImplCopyWithImpl<_$PreloadStateImpl>(this, _$identity);
}

abstract class _PreloadState implements PreloadState {
  factory _PreloadState(
      {required final List<VideoItemModel> videos,
      required final List<VideoPlayerController> controllers,
      required final int focusedIndex,
      required final int apiExplorePage,
      required final bool isLoading}) = _$PreloadStateImpl;

  @override
  List<VideoItemModel> get videos;
  @override
  List<VideoPlayerController> get controllers;
  @override
  int get focusedIndex;
  @override
  int get apiExplorePage;
  @override
  bool get isLoading;

  /// Create a copy of PreloadState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreloadStateImplCopyWith<_$PreloadStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
