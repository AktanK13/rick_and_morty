// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locations_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocationsEvent {
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
    required TResult Function(FetchLocations value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchLocations value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchLocations value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsEventCopyWith<$Res> {
  factory $LocationsEventCopyWith(
          LocationsEvent value, $Res Function(LocationsEvent) then) =
      _$LocationsEventCopyWithImpl<$Res, LocationsEvent>;
}

/// @nodoc
class _$LocationsEventCopyWithImpl<$Res, $Val extends LocationsEvent>
    implements $LocationsEventCopyWith<$Res> {
  _$LocationsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchLocationsImplCopyWith<$Res> {
  factory _$$FetchLocationsImplCopyWith(_$FetchLocationsImpl value,
          $Res Function(_$FetchLocationsImpl) then) =
      __$$FetchLocationsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchLocationsImplCopyWithImpl<$Res>
    extends _$LocationsEventCopyWithImpl<$Res, _$FetchLocationsImpl>
    implements _$$FetchLocationsImplCopyWith<$Res> {
  __$$FetchLocationsImplCopyWithImpl(
      _$FetchLocationsImpl _value, $Res Function(_$FetchLocationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchLocationsImpl implements FetchLocations {
  const _$FetchLocationsImpl();

  @override
  String toString() {
    return 'LocationsEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchLocationsImpl);
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
    required TResult Function(FetchLocations value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchLocations value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchLocations value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchLocations implements LocationsEvent {
  const factory FetchLocations() = _$FetchLocationsImpl;
}

/// @nodoc
mixin _$LocationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(
            List<LocationEntity> locations, bool hasReachedMax)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<LocationEntity> locations, bool hasReachedMax)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<LocationEntity> locations, bool hasReachedMax)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationsInitialState value) initial,
    required TResult Function(_LocationsLoadingState value) loading,
    required TResult Function(_LocationsErrorState value) error,
    required TResult Function(_LocationsLoadedSuccess value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationsInitialState value)? initial,
    TResult? Function(_LocationsLoadingState value)? loading,
    TResult? Function(_LocationsErrorState value)? error,
    TResult? Function(_LocationsLoadedSuccess value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationsInitialState value)? initial,
    TResult Function(_LocationsLoadingState value)? loading,
    TResult Function(_LocationsErrorState value)? error,
    TResult Function(_LocationsLoadedSuccess value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsStateCopyWith<$Res> {
  factory $LocationsStateCopyWith(
          LocationsState value, $Res Function(LocationsState) then) =
      _$LocationsStateCopyWithImpl<$Res, LocationsState>;
}

/// @nodoc
class _$LocationsStateCopyWithImpl<$Res, $Val extends LocationsState>
    implements $LocationsStateCopyWith<$Res> {
  _$LocationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LocationsInitialStateImplCopyWith<$Res> {
  factory _$$LocationsInitialStateImplCopyWith(
          _$LocationsInitialStateImpl value,
          $Res Function(_$LocationsInitialStateImpl) then) =
      __$$LocationsInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationsInitialStateImplCopyWithImpl<$Res>
    extends _$LocationsStateCopyWithImpl<$Res, _$LocationsInitialStateImpl>
    implements _$$LocationsInitialStateImplCopyWith<$Res> {
  __$$LocationsInitialStateImplCopyWithImpl(_$LocationsInitialStateImpl _value,
      $Res Function(_$LocationsInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LocationsInitialStateImpl implements _LocationsInitialState {
  const _$LocationsInitialStateImpl();

  @override
  String toString() {
    return 'LocationsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationsInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(
            List<LocationEntity> locations, bool hasReachedMax)
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
    TResult? Function(List<LocationEntity> locations, bool hasReachedMax)?
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
    TResult Function(List<LocationEntity> locations, bool hasReachedMax)?
        loaded,
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
    required TResult Function(_LocationsInitialState value) initial,
    required TResult Function(_LocationsLoadingState value) loading,
    required TResult Function(_LocationsErrorState value) error,
    required TResult Function(_LocationsLoadedSuccess value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationsInitialState value)? initial,
    TResult? Function(_LocationsLoadingState value)? loading,
    TResult? Function(_LocationsErrorState value)? error,
    TResult? Function(_LocationsLoadedSuccess value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationsInitialState value)? initial,
    TResult Function(_LocationsLoadingState value)? loading,
    TResult Function(_LocationsErrorState value)? error,
    TResult Function(_LocationsLoadedSuccess value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _LocationsInitialState implements LocationsState {
  const factory _LocationsInitialState() = _$LocationsInitialStateImpl;
}

/// @nodoc
abstract class _$$LocationsLoadingStateImplCopyWith<$Res> {
  factory _$$LocationsLoadingStateImplCopyWith(
          _$LocationsLoadingStateImpl value,
          $Res Function(_$LocationsLoadingStateImpl) then) =
      __$$LocationsLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationsLoadingStateImplCopyWithImpl<$Res>
    extends _$LocationsStateCopyWithImpl<$Res, _$LocationsLoadingStateImpl>
    implements _$$LocationsLoadingStateImplCopyWith<$Res> {
  __$$LocationsLoadingStateImplCopyWithImpl(_$LocationsLoadingStateImpl _value,
      $Res Function(_$LocationsLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LocationsLoadingStateImpl implements _LocationsLoadingState {
  const _$LocationsLoadingStateImpl();

  @override
  String toString() {
    return 'LocationsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationsLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(
            List<LocationEntity> locations, bool hasReachedMax)
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
    TResult? Function(List<LocationEntity> locations, bool hasReachedMax)?
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
    TResult Function(List<LocationEntity> locations, bool hasReachedMax)?
        loaded,
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
    required TResult Function(_LocationsInitialState value) initial,
    required TResult Function(_LocationsLoadingState value) loading,
    required TResult Function(_LocationsErrorState value) error,
    required TResult Function(_LocationsLoadedSuccess value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationsInitialState value)? initial,
    TResult? Function(_LocationsLoadingState value)? loading,
    TResult? Function(_LocationsErrorState value)? error,
    TResult? Function(_LocationsLoadedSuccess value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationsInitialState value)? initial,
    TResult Function(_LocationsLoadingState value)? loading,
    TResult Function(_LocationsErrorState value)? error,
    TResult Function(_LocationsLoadedSuccess value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LocationsLoadingState implements LocationsState {
  const factory _LocationsLoadingState() = _$LocationsLoadingStateImpl;
}

/// @nodoc
abstract class _$$LocationsErrorStateImplCopyWith<$Res> {
  factory _$$LocationsErrorStateImplCopyWith(_$LocationsErrorStateImpl value,
          $Res Function(_$LocationsErrorStateImpl) then) =
      __$$LocationsErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LocationsErrorStateImplCopyWithImpl<$Res>
    extends _$LocationsStateCopyWithImpl<$Res, _$LocationsErrorStateImpl>
    implements _$$LocationsErrorStateImplCopyWith<$Res> {
  __$$LocationsErrorStateImplCopyWithImpl(_$LocationsErrorStateImpl _value,
      $Res Function(_$LocationsErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LocationsErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocationsErrorStateImpl implements _LocationsErrorState {
  const _$LocationsErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LocationsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationsErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of LocationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationsErrorStateImplCopyWith<_$LocationsErrorStateImpl> get copyWith =>
      __$$LocationsErrorStateImplCopyWithImpl<_$LocationsErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(
            List<LocationEntity> locations, bool hasReachedMax)
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
    TResult? Function(List<LocationEntity> locations, bool hasReachedMax)?
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
    TResult Function(List<LocationEntity> locations, bool hasReachedMax)?
        loaded,
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
    required TResult Function(_LocationsInitialState value) initial,
    required TResult Function(_LocationsLoadingState value) loading,
    required TResult Function(_LocationsErrorState value) error,
    required TResult Function(_LocationsLoadedSuccess value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationsInitialState value)? initial,
    TResult? Function(_LocationsLoadingState value)? loading,
    TResult? Function(_LocationsErrorState value)? error,
    TResult? Function(_LocationsLoadedSuccess value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationsInitialState value)? initial,
    TResult Function(_LocationsLoadingState value)? loading,
    TResult Function(_LocationsErrorState value)? error,
    TResult Function(_LocationsLoadedSuccess value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _LocationsErrorState implements LocationsState {
  const factory _LocationsErrorState(final String message) =
      _$LocationsErrorStateImpl;

  String get message;

  /// Create a copy of LocationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationsErrorStateImplCopyWith<_$LocationsErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationsLoadedSuccessImplCopyWith<$Res> {
  factory _$$LocationsLoadedSuccessImplCopyWith(
          _$LocationsLoadedSuccessImpl value,
          $Res Function(_$LocationsLoadedSuccessImpl) then) =
      __$$LocationsLoadedSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LocationEntity> locations, bool hasReachedMax});
}

/// @nodoc
class __$$LocationsLoadedSuccessImplCopyWithImpl<$Res>
    extends _$LocationsStateCopyWithImpl<$Res, _$LocationsLoadedSuccessImpl>
    implements _$$LocationsLoadedSuccessImplCopyWith<$Res> {
  __$$LocationsLoadedSuccessImplCopyWithImpl(
      _$LocationsLoadedSuccessImpl _value,
      $Res Function(_$LocationsLoadedSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locations = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_$LocationsLoadedSuccessImpl(
      locations: null == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LocationEntity>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LocationsLoadedSuccessImpl implements _LocationsLoadedSuccess {
  const _$LocationsLoadedSuccessImpl(
      {required final List<LocationEntity> locations,
      this.hasReachedMax = false})
      : _locations = locations;

  final List<LocationEntity> _locations;
  @override
  List<LocationEntity> get locations {
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locations);
  }

  @override
  @JsonKey()
  final bool hasReachedMax;

  @override
  String toString() {
    return 'LocationsState.loaded(locations: $locations, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationsLoadedSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_locations), hasReachedMax);

  /// Create a copy of LocationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationsLoadedSuccessImplCopyWith<_$LocationsLoadedSuccessImpl>
      get copyWith => __$$LocationsLoadedSuccessImplCopyWithImpl<
          _$LocationsLoadedSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(
            List<LocationEntity> locations, bool hasReachedMax)
        loaded,
  }) {
    return loaded(locations, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<LocationEntity> locations, bool hasReachedMax)?
        loaded,
  }) {
    return loaded?.call(locations, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<LocationEntity> locations, bool hasReachedMax)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(locations, hasReachedMax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationsInitialState value) initial,
    required TResult Function(_LocationsLoadingState value) loading,
    required TResult Function(_LocationsErrorState value) error,
    required TResult Function(_LocationsLoadedSuccess value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocationsInitialState value)? initial,
    TResult? Function(_LocationsLoadingState value)? loading,
    TResult? Function(_LocationsErrorState value)? error,
    TResult? Function(_LocationsLoadedSuccess value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationsInitialState value)? initial,
    TResult Function(_LocationsLoadingState value)? loading,
    TResult Function(_LocationsErrorState value)? error,
    TResult Function(_LocationsLoadedSuccess value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LocationsLoadedSuccess implements LocationsState {
  const factory _LocationsLoadedSuccess(
      {required final List<LocationEntity> locations,
      final bool hasReachedMax}) = _$LocationsLoadedSuccessImpl;

  List<LocationEntity> get locations;
  bool get hasReachedMax;

  /// Create a copy of LocationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationsLoadedSuccessImplCopyWith<_$LocationsLoadedSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
