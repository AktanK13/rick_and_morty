// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episodes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpisodesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchEpisodes value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchEpisodes value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchEpisodes value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodesEventCopyWith<$Res> {
  factory $EpisodesEventCopyWith(
          EpisodesEvent value, $Res Function(EpisodesEvent) then) =
      _$EpisodesEventCopyWithImpl<$Res, EpisodesEvent>;
}

/// @nodoc
class _$EpisodesEventCopyWithImpl<$Res, $Val extends EpisodesEvent>
    implements $EpisodesEventCopyWith<$Res> {
  _$EpisodesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpisodesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchEpisodesImplCopyWith<$Res> {
  factory _$$FetchEpisodesImplCopyWith(
          _$FetchEpisodesImpl value, $Res Function(_$FetchEpisodesImpl) then) =
      __$$FetchEpisodesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchEpisodesImplCopyWithImpl<$Res>
    extends _$EpisodesEventCopyWithImpl<$Res, _$FetchEpisodesImpl>
    implements _$$FetchEpisodesImplCopyWith<$Res> {
  __$$FetchEpisodesImplCopyWithImpl(
      _$FetchEpisodesImpl _value, $Res Function(_$FetchEpisodesImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpisodesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchEpisodesImpl implements FetchEpisodes {
  const _$FetchEpisodesImpl();

  @override
  String toString() {
    return 'EpisodesEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchEpisodesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchEpisodes value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchEpisodes value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchEpisodes value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchEpisodes implements EpisodesEvent {
  const factory FetchEpisodes() = _$FetchEpisodesImpl;
}

/// @nodoc
mixin _$EpisodesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<EpisodesEntity> episodes, bool hasReachedMax)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<EpisodesEntity> episodes, bool hasReachedMax)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<EpisodesEntity> episodes, bool hasReachedMax)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EpisodesInitialState value) initial,
    required TResult Function(_EpisodesLoadingState value) loading,
    required TResult Function(_EpisodesErrorState value) error,
    required TResult Function(_EpisodesLoadedSuccess value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EpisodesInitialState value)? initial,
    TResult? Function(_EpisodesLoadingState value)? loading,
    TResult? Function(_EpisodesErrorState value)? error,
    TResult? Function(_EpisodesLoadedSuccess value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EpisodesInitialState value)? initial,
    TResult Function(_EpisodesLoadingState value)? loading,
    TResult Function(_EpisodesErrorState value)? error,
    TResult Function(_EpisodesLoadedSuccess value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodesStateCopyWith<$Res> {
  factory $EpisodesStateCopyWith(
          EpisodesState value, $Res Function(EpisodesState) then) =
      _$EpisodesStateCopyWithImpl<$Res, EpisodesState>;
}

/// @nodoc
class _$EpisodesStateCopyWithImpl<$Res, $Val extends EpisodesState>
    implements $EpisodesStateCopyWith<$Res> {
  _$EpisodesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpisodesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EpisodesInitialStateImplCopyWith<$Res> {
  factory _$$EpisodesInitialStateImplCopyWith(_$EpisodesInitialStateImpl value,
          $Res Function(_$EpisodesInitialStateImpl) then) =
      __$$EpisodesInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EpisodesInitialStateImplCopyWithImpl<$Res>
    extends _$EpisodesStateCopyWithImpl<$Res, _$EpisodesInitialStateImpl>
    implements _$$EpisodesInitialStateImplCopyWith<$Res> {
  __$$EpisodesInitialStateImplCopyWithImpl(_$EpisodesInitialStateImpl _value,
      $Res Function(_$EpisodesInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpisodesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EpisodesInitialStateImpl implements _EpisodesInitialState {
  const _$EpisodesInitialStateImpl();

  @override
  String toString() {
    return 'EpisodesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodesInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<EpisodesEntity> episodes, bool hasReachedMax)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<EpisodesEntity> episodes, bool hasReachedMax)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<EpisodesEntity> episodes, bool hasReachedMax)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EpisodesInitialState value) initial,
    required TResult Function(_EpisodesLoadingState value) loading,
    required TResult Function(_EpisodesErrorState value) error,
    required TResult Function(_EpisodesLoadedSuccess value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EpisodesInitialState value)? initial,
    TResult? Function(_EpisodesLoadingState value)? loading,
    TResult? Function(_EpisodesErrorState value)? error,
    TResult? Function(_EpisodesLoadedSuccess value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EpisodesInitialState value)? initial,
    TResult Function(_EpisodesLoadingState value)? loading,
    TResult Function(_EpisodesErrorState value)? error,
    TResult Function(_EpisodesLoadedSuccess value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _EpisodesInitialState implements EpisodesState {
  const factory _EpisodesInitialState() = _$EpisodesInitialStateImpl;
}

/// @nodoc
abstract class _$$EpisodesLoadingStateImplCopyWith<$Res> {
  factory _$$EpisodesLoadingStateImplCopyWith(_$EpisodesLoadingStateImpl value,
          $Res Function(_$EpisodesLoadingStateImpl) then) =
      __$$EpisodesLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EpisodesLoadingStateImplCopyWithImpl<$Res>
    extends _$EpisodesStateCopyWithImpl<$Res, _$EpisodesLoadingStateImpl>
    implements _$$EpisodesLoadingStateImplCopyWith<$Res> {
  __$$EpisodesLoadingStateImplCopyWithImpl(_$EpisodesLoadingStateImpl _value,
      $Res Function(_$EpisodesLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpisodesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EpisodesLoadingStateImpl implements _EpisodesLoadingState {
  const _$EpisodesLoadingStateImpl();

  @override
  String toString() {
    return 'EpisodesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodesLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<EpisodesEntity> episodes, bool hasReachedMax)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<EpisodesEntity> episodes, bool hasReachedMax)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<EpisodesEntity> episodes, bool hasReachedMax)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EpisodesInitialState value) initial,
    required TResult Function(_EpisodesLoadingState value) loading,
    required TResult Function(_EpisodesErrorState value) error,
    required TResult Function(_EpisodesLoadedSuccess value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EpisodesInitialState value)? initial,
    TResult? Function(_EpisodesLoadingState value)? loading,
    TResult? Function(_EpisodesErrorState value)? error,
    TResult? Function(_EpisodesLoadedSuccess value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EpisodesInitialState value)? initial,
    TResult Function(_EpisodesLoadingState value)? loading,
    TResult Function(_EpisodesErrorState value)? error,
    TResult Function(_EpisodesLoadedSuccess value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _EpisodesLoadingState implements EpisodesState {
  const factory _EpisodesLoadingState() = _$EpisodesLoadingStateImpl;
}

/// @nodoc
abstract class _$$EpisodesErrorStateImplCopyWith<$Res> {
  factory _$$EpisodesErrorStateImplCopyWith(_$EpisodesErrorStateImpl value,
          $Res Function(_$EpisodesErrorStateImpl) then) =
      __$$EpisodesErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$EpisodesErrorStateImplCopyWithImpl<$Res>
    extends _$EpisodesStateCopyWithImpl<$Res, _$EpisodesErrorStateImpl>
    implements _$$EpisodesErrorStateImplCopyWith<$Res> {
  __$$EpisodesErrorStateImplCopyWithImpl(_$EpisodesErrorStateImpl _value,
      $Res Function(_$EpisodesErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpisodesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$EpisodesErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EpisodesErrorStateImpl implements _EpisodesErrorState {
  const _$EpisodesErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'EpisodesState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodesErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of EpisodesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodesErrorStateImplCopyWith<_$EpisodesErrorStateImpl> get copyWith =>
      __$$EpisodesErrorStateImplCopyWithImpl<_$EpisodesErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<EpisodesEntity> episodes, bool hasReachedMax)
        loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<EpisodesEntity> episodes, bool hasReachedMax)?
        loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<EpisodesEntity> episodes, bool hasReachedMax)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EpisodesInitialState value) initial,
    required TResult Function(_EpisodesLoadingState value) loading,
    required TResult Function(_EpisodesErrorState value) error,
    required TResult Function(_EpisodesLoadedSuccess value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EpisodesInitialState value)? initial,
    TResult? Function(_EpisodesLoadingState value)? loading,
    TResult? Function(_EpisodesErrorState value)? error,
    TResult? Function(_EpisodesLoadedSuccess value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EpisodesInitialState value)? initial,
    TResult Function(_EpisodesLoadingState value)? loading,
    TResult Function(_EpisodesErrorState value)? error,
    TResult Function(_EpisodesLoadedSuccess value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _EpisodesErrorState implements EpisodesState {
  const factory _EpisodesErrorState(final String message) =
      _$EpisodesErrorStateImpl;

  String get message;

  /// Create a copy of EpisodesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpisodesErrorStateImplCopyWith<_$EpisodesErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EpisodesLoadedSuccessImplCopyWith<$Res> {
  factory _$$EpisodesLoadedSuccessImplCopyWith(
          _$EpisodesLoadedSuccessImpl value,
          $Res Function(_$EpisodesLoadedSuccessImpl) then) =
      __$$EpisodesLoadedSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<EpisodesEntity> episodes, bool hasReachedMax});
}

/// @nodoc
class __$$EpisodesLoadedSuccessImplCopyWithImpl<$Res>
    extends _$EpisodesStateCopyWithImpl<$Res, _$EpisodesLoadedSuccessImpl>
    implements _$$EpisodesLoadedSuccessImplCopyWith<$Res> {
  __$$EpisodesLoadedSuccessImplCopyWithImpl(_$EpisodesLoadedSuccessImpl _value,
      $Res Function(_$EpisodesLoadedSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpisodesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? episodes = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_$EpisodesLoadedSuccessImpl(
      episodes: null == episodes
          ? _value._episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<EpisodesEntity>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EpisodesLoadedSuccessImpl implements _EpisodesLoadedSuccess {
  const _$EpisodesLoadedSuccessImpl(
      {required final List<EpisodesEntity> episodes,
      this.hasReachedMax = false})
      : _episodes = episodes;

  final List<EpisodesEntity> _episodes;
  @override
  List<EpisodesEntity> get episodes {
    if (_episodes is EqualUnmodifiableListView) return _episodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_episodes);
  }

  @override
  @JsonKey()
  final bool hasReachedMax;

  @override
  String toString() {
    return 'EpisodesState.loaded(episodes: $episodes, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodesLoadedSuccessImpl &&
            const DeepCollectionEquality().equals(other._episodes, _episodes) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_episodes), hasReachedMax);

  /// Create a copy of EpisodesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodesLoadedSuccessImplCopyWith<_$EpisodesLoadedSuccessImpl>
      get copyWith => __$$EpisodesLoadedSuccessImplCopyWithImpl<
          _$EpisodesLoadedSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<EpisodesEntity> episodes, bool hasReachedMax)
        loaded,
  }) {
    return loaded(episodes, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<EpisodesEntity> episodes, bool hasReachedMax)?
        loaded,
  }) {
    return loaded?.call(episodes, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<EpisodesEntity> episodes, bool hasReachedMax)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(episodes, hasReachedMax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EpisodesInitialState value) initial,
    required TResult Function(_EpisodesLoadingState value) loading,
    required TResult Function(_EpisodesErrorState value) error,
    required TResult Function(_EpisodesLoadedSuccess value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EpisodesInitialState value)? initial,
    TResult? Function(_EpisodesLoadingState value)? loading,
    TResult? Function(_EpisodesErrorState value)? error,
    TResult? Function(_EpisodesLoadedSuccess value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EpisodesInitialState value)? initial,
    TResult Function(_EpisodesLoadingState value)? loading,
    TResult Function(_EpisodesErrorState value)? error,
    TResult Function(_EpisodesLoadedSuccess value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _EpisodesLoadedSuccess implements EpisodesState {
  const factory _EpisodesLoadedSuccess(
      {required final List<EpisodesEntity> episodes,
      final bool hasReachedMax}) = _$EpisodesLoadedSuccessImpl;

  List<EpisodesEntity> get episodes;
  bool get hasReachedMax;

  /// Create a copy of EpisodesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpisodesLoadedSuccessImplCopyWith<_$EpisodesLoadedSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
