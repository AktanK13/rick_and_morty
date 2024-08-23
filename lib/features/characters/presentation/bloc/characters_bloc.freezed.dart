// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'characters_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CharactersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String gender) fetch,
    required TResult Function(String name) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status, String gender)? fetch,
    TResult? Function(String name)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String gender)? fetch,
    TResult Function(String name)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCharacters value) fetch,
    required TResult Function(SearchCharacters value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCharacters value)? fetch,
    TResult? Function(SearchCharacters value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCharacters value)? fetch,
    TResult Function(SearchCharacters value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersEventCopyWith<$Res> {
  factory $CharactersEventCopyWith(
          CharactersEvent value, $Res Function(CharactersEvent) then) =
      _$CharactersEventCopyWithImpl<$Res, CharactersEvent>;
}

/// @nodoc
class _$CharactersEventCopyWithImpl<$Res, $Val extends CharactersEvent>
    implements $CharactersEventCopyWith<$Res> {
  _$CharactersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchCharactersImplCopyWith<$Res> {
  factory _$$FetchCharactersImplCopyWith(_$FetchCharactersImpl value,
          $Res Function(_$FetchCharactersImpl) then) =
      __$$FetchCharactersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String status, String gender});
}

/// @nodoc
class __$$FetchCharactersImplCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res, _$FetchCharactersImpl>
    implements _$$FetchCharactersImplCopyWith<$Res> {
  __$$FetchCharactersImplCopyWithImpl(
      _$FetchCharactersImpl _value, $Res Function(_$FetchCharactersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? gender = null,
  }) {
    return _then(_$FetchCharactersImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchCharactersImpl implements FetchCharacters {
  const _$FetchCharactersImpl({required this.status, required this.gender});

  @override
  final String status;
  @override
  final String gender;

  @override
  String toString() {
    return 'CharactersEvent.fetch(status: $status, gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCharactersImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCharactersImplCopyWith<_$FetchCharactersImpl> get copyWith =>
      __$$FetchCharactersImplCopyWithImpl<_$FetchCharactersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String gender) fetch,
    required TResult Function(String name) search,
  }) {
    return fetch(status, gender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status, String gender)? fetch,
    TResult? Function(String name)? search,
  }) {
    return fetch?.call(status, gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String gender)? fetch,
    TResult Function(String name)? search,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(status, gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCharacters value) fetch,
    required TResult Function(SearchCharacters value) search,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCharacters value)? fetch,
    TResult? Function(SearchCharacters value)? search,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCharacters value)? fetch,
    TResult Function(SearchCharacters value)? search,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchCharacters implements CharactersEvent {
  const factory FetchCharacters(
      {required final String status,
      required final String gender}) = _$FetchCharactersImpl;

  String get status;
  String get gender;
  @JsonKey(ignore: true)
  _$$FetchCharactersImplCopyWith<_$FetchCharactersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchCharactersImplCopyWith<$Res> {
  factory _$$SearchCharactersImplCopyWith(_$SearchCharactersImpl value,
          $Res Function(_$SearchCharactersImpl) then) =
      __$$SearchCharactersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$SearchCharactersImplCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res, _$SearchCharactersImpl>
    implements _$$SearchCharactersImplCopyWith<$Res> {
  __$$SearchCharactersImplCopyWithImpl(_$SearchCharactersImpl _value,
      $Res Function(_$SearchCharactersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$SearchCharactersImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchCharactersImpl implements SearchCharacters {
  const _$SearchCharactersImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'CharactersEvent.search(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCharactersImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCharactersImplCopyWith<_$SearchCharactersImpl> get copyWith =>
      __$$SearchCharactersImplCopyWithImpl<_$SearchCharactersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status, String gender) fetch,
    required TResult Function(String name) search,
  }) {
    return search(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status, String gender)? fetch,
    TResult? Function(String name)? search,
  }) {
    return search?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status, String gender)? fetch,
    TResult Function(String name)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCharacters value) fetch,
    required TResult Function(SearchCharacters value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCharacters value)? fetch,
    TResult? Function(SearchCharacters value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCharacters value)? fetch,
    TResult Function(SearchCharacters value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class SearchCharacters implements CharactersEvent {
  const factory SearchCharacters({required final String name}) =
      _$SearchCharactersImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$SearchCharactersImplCopyWith<_$SearchCharactersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CharactersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(
            List<CharactersEntity> characters, bool hasReachedMax, int count)
        loaded,
    required TResult Function() searchLoading,
    required TResult Function(String message) searchError,
    required TResult Function(
            List<CharactersEntity> characters, bool hasReachedMax)
        searchLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(
            List<CharactersEntity> characters, bool hasReachedMax, int count)?
        loaded,
    TResult? Function()? searchLoading,
    TResult? Function(String message)? searchError,
    TResult? Function(List<CharactersEntity> characters, bool hasReachedMax)?
        searchLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(
            List<CharactersEntity> characters, bool hasReachedMax, int count)?
        loaded,
    TResult Function()? searchLoading,
    TResult Function(String message)? searchError,
    TResult Function(List<CharactersEntity> characters, bool hasReachedMax)?
        searchLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CharactersInitial value) initial,
    required TResult Function(_CharactersLoading value) loading,
    required TResult Function(_CharactersError value) error,
    required TResult Function(_CharactersLoadSuccess value) loaded,
    required TResult Function(_SearchCharactersLoading value) searchLoading,
    required TResult Function(_SearchCharactersError value) searchError,
    required TResult Function(_SearchCharactersLoadSuccess value) searchLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharactersInitial value)? initial,
    TResult? Function(_CharactersLoading value)? loading,
    TResult? Function(_CharactersError value)? error,
    TResult? Function(_CharactersLoadSuccess value)? loaded,
    TResult? Function(_SearchCharactersLoading value)? searchLoading,
    TResult? Function(_SearchCharactersError value)? searchError,
    TResult? Function(_SearchCharactersLoadSuccess value)? searchLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharactersInitial value)? initial,
    TResult Function(_CharactersLoading value)? loading,
    TResult Function(_CharactersError value)? error,
    TResult Function(_CharactersLoadSuccess value)? loaded,
    TResult Function(_SearchCharactersLoading value)? searchLoading,
    TResult Function(_SearchCharactersError value)? searchError,
    TResult Function(_SearchCharactersLoadSuccess value)? searchLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersStateCopyWith<$Res> {
  factory $CharactersStateCopyWith(
          CharactersState value, $Res Function(CharactersState) then) =
      _$CharactersStateCopyWithImpl<$Res, CharactersState>;
}

/// @nodoc
class _$CharactersStateCopyWithImpl<$Res, $Val extends CharactersState>
    implements $CharactersStateCopyWith<$Res> {
  _$CharactersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CharactersInitialImplCopyWith<$Res> {
  factory _$$CharactersInitialImplCopyWith(_$CharactersInitialImpl value,
          $Res Function(_$CharactersInitialImpl) then) =
      __$$CharactersInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharactersInitialImplCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res, _$CharactersInitialImpl>
    implements _$$CharactersInitialImplCopyWith<$Res> {
  __$$CharactersInitialImplCopyWithImpl(_$CharactersInitialImpl _value,
      $Res Function(_$CharactersInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharactersInitialImpl implements _CharactersInitial {
  const _$CharactersInitialImpl();

  @override
  String toString() {
    return 'CharactersState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CharactersInitialImpl);
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
            List<CharactersEntity> characters, bool hasReachedMax, int count)
        loaded,
    required TResult Function() searchLoading,
    required TResult Function(String message) searchError,
    required TResult Function(
            List<CharactersEntity> characters, bool hasReachedMax)
        searchLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(
            List<CharactersEntity> characters, bool hasReachedMax, int count)?
        loaded,
    TResult? Function()? searchLoading,
    TResult? Function(String message)? searchError,
    TResult? Function(List<CharactersEntity> characters, bool hasReachedMax)?
        searchLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(
            List<CharactersEntity> characters, bool hasReachedMax, int count)?
        loaded,
    TResult Function()? searchLoading,
    TResult Function(String message)? searchError,
    TResult Function(List<CharactersEntity> characters, bool hasReachedMax)?
        searchLoaded,
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
    required TResult Function(_CharactersInitial value) initial,
    required TResult Function(_CharactersLoading value) loading,
    required TResult Function(_CharactersError value) error,
    required TResult Function(_CharactersLoadSuccess value) loaded,
    required TResult Function(_SearchCharactersLoading value) searchLoading,
    required TResult Function(_SearchCharactersError value) searchError,
    required TResult Function(_SearchCharactersLoadSuccess value) searchLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharactersInitial value)? initial,
    TResult? Function(_CharactersLoading value)? loading,
    TResult? Function(_CharactersError value)? error,
    TResult? Function(_CharactersLoadSuccess value)? loaded,
    TResult? Function(_SearchCharactersLoading value)? searchLoading,
    TResult? Function(_SearchCharactersError value)? searchError,
    TResult? Function(_SearchCharactersLoadSuccess value)? searchLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharactersInitial value)? initial,
    TResult Function(_CharactersLoading value)? loading,
    TResult Function(_CharactersError value)? error,
    TResult Function(_CharactersLoadSuccess value)? loaded,
    TResult Function(_SearchCharactersLoading value)? searchLoading,
    TResult Function(_SearchCharactersError value)? searchError,
    TResult Function(_SearchCharactersLoadSuccess value)? searchLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CharactersInitial implements CharactersState {
  const factory _CharactersInitial() = _$CharactersInitialImpl;
}

/// @nodoc
abstract class _$$CharactersLoadingImplCopyWith<$Res> {
  factory _$$CharactersLoadingImplCopyWith(_$CharactersLoadingImpl value,
          $Res Function(_$CharactersLoadingImpl) then) =
      __$$CharactersLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharactersLoadingImplCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res, _$CharactersLoadingImpl>
    implements _$$CharactersLoadingImplCopyWith<$Res> {
  __$$CharactersLoadingImplCopyWithImpl(_$CharactersLoadingImpl _value,
      $Res Function(_$CharactersLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharactersLoadingImpl implements _CharactersLoading {
  const _$CharactersLoadingImpl();

  @override
  String toString() {
    return 'CharactersState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CharactersLoadingImpl);
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
            List<CharactersEntity> characters, bool hasReachedMax, int count)
        loaded,
    required TResult Function() searchLoading,
    required TResult Function(String message) searchError,
    required TResult Function(
            List<CharactersEntity> characters, bool hasReachedMax)
        searchLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(
            List<CharactersEntity> characters, bool hasReachedMax, int count)?
        loaded,
    TResult? Function()? searchLoading,
    TResult? Function(String message)? searchError,
    TResult? Function(List<CharactersEntity> characters, bool hasReachedMax)?
        searchLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(
            List<CharactersEntity> characters, bool hasReachedMax, int count)?
        loaded,
    TResult Function()? searchLoading,
    TResult Function(String message)? searchError,
    TResult Function(List<CharactersEntity> characters, bool hasReachedMax)?
        searchLoaded,
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
    required TResult Function(_CharactersInitial value) initial,
    required TResult Function(_CharactersLoading value) loading,
    required TResult Function(_CharactersError value) error,
    required TResult Function(_CharactersLoadSuccess value) loaded,
    required TResult Function(_SearchCharactersLoading value) searchLoading,
    required TResult Function(_SearchCharactersError value) searchError,
    required TResult Function(_SearchCharactersLoadSuccess value) searchLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharactersInitial value)? initial,
    TResult? Function(_CharactersLoading value)? loading,
    TResult? Function(_CharactersError value)? error,
    TResult? Function(_CharactersLoadSuccess value)? loaded,
    TResult? Function(_SearchCharactersLoading value)? searchLoading,
    TResult? Function(_SearchCharactersError value)? searchError,
    TResult? Function(_SearchCharactersLoadSuccess value)? searchLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharactersInitial value)? initial,
    TResult Function(_CharactersLoading value)? loading,
    TResult Function(_CharactersError value)? error,
    TResult Function(_CharactersLoadSuccess value)? loaded,
    TResult Function(_SearchCharactersLoading value)? searchLoading,
    TResult Function(_SearchCharactersError value)? searchError,
    TResult Function(_SearchCharactersLoadSuccess value)? searchLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CharactersLoading implements CharactersState {
  const factory _CharactersLoading() = _$CharactersLoadingImpl;
}

/// @nodoc
abstract class _$$CharactersErrorImplCopyWith<$Res> {
  factory _$$CharactersErrorImplCopyWith(_$CharactersErrorImpl value,
          $Res Function(_$CharactersErrorImpl) then) =
      __$$CharactersErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CharactersErrorImplCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res, _$CharactersErrorImpl>
    implements _$$CharactersErrorImplCopyWith<$Res> {
  __$$CharactersErrorImplCopyWithImpl(
      _$CharactersErrorImpl _value, $Res Function(_$CharactersErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CharactersErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CharactersErrorImpl implements _CharactersError {
  const _$CharactersErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CharactersState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersErrorImplCopyWith<_$CharactersErrorImpl> get copyWith =>
      __$$CharactersErrorImplCopyWithImpl<_$CharactersErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(
            List<CharactersEntity> characters, bool hasReachedMax, int count)
        loaded,
    required TResult Function() searchLoading,
    required TResult Function(String message) searchError,
    required TResult Function(
            List<CharactersEntity> characters, bool hasReachedMax)
        searchLoaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(
            List<CharactersEntity> characters, bool hasReachedMax, int count)?
        loaded,
    TResult? Function()? searchLoading,
    TResult? Function(String message)? searchError,
    TResult? Function(List<CharactersEntity> characters, bool hasReachedMax)?
        searchLoaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(
            List<CharactersEntity> characters, bool hasReachedMax, int count)?
        loaded,
    TResult Function()? searchLoading,
    TResult Function(String message)? searchError,
    TResult Function(List<CharactersEntity> characters, bool hasReachedMax)?
        searchLoaded,
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
    required TResult Function(_CharactersInitial value) initial,
    required TResult Function(_CharactersLoading value) loading,
    required TResult Function(_CharactersError value) error,
    required TResult Function(_CharactersLoadSuccess value) loaded,
    required TResult Function(_SearchCharactersLoading value) searchLoading,
    required TResult Function(_SearchCharactersError value) searchError,
    required TResult Function(_SearchCharactersLoadSuccess value) searchLoaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharactersInitial value)? initial,
    TResult? Function(_CharactersLoading value)? loading,
    TResult? Function(_CharactersError value)? error,
    TResult? Function(_CharactersLoadSuccess value)? loaded,
    TResult? Function(_SearchCharactersLoading value)? searchLoading,
    TResult? Function(_SearchCharactersError value)? searchError,
    TResult? Function(_SearchCharactersLoadSuccess value)? searchLoaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharactersInitial value)? initial,
    TResult Function(_CharactersLoading value)? loading,
    TResult Function(_CharactersError value)? error,
    TResult Function(_CharactersLoadSuccess value)? loaded,
    TResult Function(_SearchCharactersLoading value)? searchLoading,
    TResult Function(_SearchCharactersError value)? searchError,
    TResult Function(_SearchCharactersLoadSuccess value)? searchLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CharactersError implements CharactersState {
  const factory _CharactersError(final String message) = _$CharactersErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$CharactersErrorImplCopyWith<_$CharactersErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharactersLoadSuccessImplCopyWith<$Res> {
  factory _$$CharactersLoadSuccessImplCopyWith(
          _$CharactersLoadSuccessImpl value,
          $Res Function(_$CharactersLoadSuccessImpl) then) =
      __$$CharactersLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CharactersEntity> characters, bool hasReachedMax, int count});
}

/// @nodoc
class __$$CharactersLoadSuccessImplCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res, _$CharactersLoadSuccessImpl>
    implements _$$CharactersLoadSuccessImplCopyWith<$Res> {
  __$$CharactersLoadSuccessImplCopyWithImpl(_$CharactersLoadSuccessImpl _value,
      $Res Function(_$CharactersLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? hasReachedMax = null,
    Object? count = null,
  }) {
    return _then(_$CharactersLoadSuccessImpl(
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharactersEntity>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CharactersLoadSuccessImpl implements _CharactersLoadSuccess {
  const _$CharactersLoadSuccessImpl(
      {required final List<CharactersEntity> characters,
      this.hasReachedMax = false,
      this.count = 0})
      : _characters = characters;

  final List<CharactersEntity> _characters;
  @override
  List<CharactersEntity> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  @JsonKey()
  final bool hasReachedMax;
  @override
  @JsonKey()
  final int count;

  @override
  String toString() {
    return 'CharactersState.loaded(characters: $characters, hasReachedMax: $hasReachedMax, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersLoadSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_characters), hasReachedMax, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersLoadSuccessImplCopyWith<_$CharactersLoadSuccessImpl>
      get copyWith => __$$CharactersLoadSuccessImplCopyWithImpl<
          _$CharactersLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(
            List<CharactersEntity> characters, bool hasReachedMax, int count)
        loaded,
    required TResult Function() searchLoading,
    required TResult Function(String message) searchError,
    required TResult Function(
            List<CharactersEntity> characters, bool hasReachedMax)
        searchLoaded,
  }) {
    return loaded(characters, hasReachedMax, count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(
            List<CharactersEntity> characters, bool hasReachedMax, int count)?
        loaded,
    TResult? Function()? searchLoading,
    TResult? Function(String message)? searchError,
    TResult? Function(List<CharactersEntity> characters, bool hasReachedMax)?
        searchLoaded,
  }) {
    return loaded?.call(characters, hasReachedMax, count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(
            List<CharactersEntity> characters, bool hasReachedMax, int count)?
        loaded,
    TResult Function()? searchLoading,
    TResult Function(String message)? searchError,
    TResult Function(List<CharactersEntity> characters, bool hasReachedMax)?
        searchLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(characters, hasReachedMax, count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CharactersInitial value) initial,
    required TResult Function(_CharactersLoading value) loading,
    required TResult Function(_CharactersError value) error,
    required TResult Function(_CharactersLoadSuccess value) loaded,
    required TResult Function(_SearchCharactersLoading value) searchLoading,
    required TResult Function(_SearchCharactersError value) searchError,
    required TResult Function(_SearchCharactersLoadSuccess value) searchLoaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharactersInitial value)? initial,
    TResult? Function(_CharactersLoading value)? loading,
    TResult? Function(_CharactersError value)? error,
    TResult? Function(_CharactersLoadSuccess value)? loaded,
    TResult? Function(_SearchCharactersLoading value)? searchLoading,
    TResult? Function(_SearchCharactersError value)? searchError,
    TResult? Function(_SearchCharactersLoadSuccess value)? searchLoaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharactersInitial value)? initial,
    TResult Function(_CharactersLoading value)? loading,
    TResult Function(_CharactersError value)? error,
    TResult Function(_CharactersLoadSuccess value)? loaded,
    TResult Function(_SearchCharactersLoading value)? searchLoading,
    TResult Function(_SearchCharactersError value)? searchError,
    TResult Function(_SearchCharactersLoadSuccess value)? searchLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _CharactersLoadSuccess implements CharactersState {
  const factory _CharactersLoadSuccess(
      {required final List<CharactersEntity> characters,
      final bool hasReachedMax,
      final int count}) = _$CharactersLoadSuccessImpl;

  List<CharactersEntity> get characters;
  bool get hasReachedMax;
  int get count;
  @JsonKey(ignore: true)
  _$$CharactersLoadSuccessImplCopyWith<_$CharactersLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchCharactersLoadingImplCopyWith<$Res> {
  factory _$$SearchCharactersLoadingImplCopyWith(
          _$SearchCharactersLoadingImpl value,
          $Res Function(_$SearchCharactersLoadingImpl) then) =
      __$$SearchCharactersLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchCharactersLoadingImplCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res, _$SearchCharactersLoadingImpl>
    implements _$$SearchCharactersLoadingImplCopyWith<$Res> {
  __$$SearchCharactersLoadingImplCopyWithImpl(
      _$SearchCharactersLoadingImpl _value,
      $Res Function(_$SearchCharactersLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchCharactersLoadingImpl implements _SearchCharactersLoading {
  const _$SearchCharactersLoadingImpl();

  @override
  String toString() {
    return 'CharactersState.searchLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCharactersLoadingImpl);
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
            List<CharactersEntity> characters, bool hasReachedMax, int count)
        loaded,
    required TResult Function() searchLoading,
    required TResult Function(String message) searchError,
    required TResult Function(
            List<CharactersEntity> characters, bool hasReachedMax)
        searchLoaded,
  }) {
    return searchLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(
            List<CharactersEntity> characters, bool hasReachedMax, int count)?
        loaded,
    TResult? Function()? searchLoading,
    TResult? Function(String message)? searchError,
    TResult? Function(List<CharactersEntity> characters, bool hasReachedMax)?
        searchLoaded,
  }) {
    return searchLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(
            List<CharactersEntity> characters, bool hasReachedMax, int count)?
        loaded,
    TResult Function()? searchLoading,
    TResult Function(String message)? searchError,
    TResult Function(List<CharactersEntity> characters, bool hasReachedMax)?
        searchLoaded,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CharactersInitial value) initial,
    required TResult Function(_CharactersLoading value) loading,
    required TResult Function(_CharactersError value) error,
    required TResult Function(_CharactersLoadSuccess value) loaded,
    required TResult Function(_SearchCharactersLoading value) searchLoading,
    required TResult Function(_SearchCharactersError value) searchError,
    required TResult Function(_SearchCharactersLoadSuccess value) searchLoaded,
  }) {
    return searchLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharactersInitial value)? initial,
    TResult? Function(_CharactersLoading value)? loading,
    TResult? Function(_CharactersError value)? error,
    TResult? Function(_CharactersLoadSuccess value)? loaded,
    TResult? Function(_SearchCharactersLoading value)? searchLoading,
    TResult? Function(_SearchCharactersError value)? searchError,
    TResult? Function(_SearchCharactersLoadSuccess value)? searchLoaded,
  }) {
    return searchLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharactersInitial value)? initial,
    TResult Function(_CharactersLoading value)? loading,
    TResult Function(_CharactersError value)? error,
    TResult Function(_CharactersLoadSuccess value)? loaded,
    TResult Function(_SearchCharactersLoading value)? searchLoading,
    TResult Function(_SearchCharactersError value)? searchError,
    TResult Function(_SearchCharactersLoadSuccess value)? searchLoaded,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading(this);
    }
    return orElse();
  }
}

abstract class _SearchCharactersLoading implements CharactersState {
  const factory _SearchCharactersLoading() = _$SearchCharactersLoadingImpl;
}

/// @nodoc
abstract class _$$SearchCharactersErrorImplCopyWith<$Res> {
  factory _$$SearchCharactersErrorImplCopyWith(
          _$SearchCharactersErrorImpl value,
          $Res Function(_$SearchCharactersErrorImpl) then) =
      __$$SearchCharactersErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SearchCharactersErrorImplCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res, _$SearchCharactersErrorImpl>
    implements _$$SearchCharactersErrorImplCopyWith<$Res> {
  __$$SearchCharactersErrorImplCopyWithImpl(_$SearchCharactersErrorImpl _value,
      $Res Function(_$SearchCharactersErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SearchCharactersErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchCharactersErrorImpl implements _SearchCharactersError {
  const _$SearchCharactersErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CharactersState.searchError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCharactersErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCharactersErrorImplCopyWith<_$SearchCharactersErrorImpl>
      get copyWith => __$$SearchCharactersErrorImplCopyWithImpl<
          _$SearchCharactersErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(
            List<CharactersEntity> characters, bool hasReachedMax, int count)
        loaded,
    required TResult Function() searchLoading,
    required TResult Function(String message) searchError,
    required TResult Function(
            List<CharactersEntity> characters, bool hasReachedMax)
        searchLoaded,
  }) {
    return searchError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(
            List<CharactersEntity> characters, bool hasReachedMax, int count)?
        loaded,
    TResult? Function()? searchLoading,
    TResult? Function(String message)? searchError,
    TResult? Function(List<CharactersEntity> characters, bool hasReachedMax)?
        searchLoaded,
  }) {
    return searchError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(
            List<CharactersEntity> characters, bool hasReachedMax, int count)?
        loaded,
    TResult Function()? searchLoading,
    TResult Function(String message)? searchError,
    TResult Function(List<CharactersEntity> characters, bool hasReachedMax)?
        searchLoaded,
    required TResult orElse(),
  }) {
    if (searchError != null) {
      return searchError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CharactersInitial value) initial,
    required TResult Function(_CharactersLoading value) loading,
    required TResult Function(_CharactersError value) error,
    required TResult Function(_CharactersLoadSuccess value) loaded,
    required TResult Function(_SearchCharactersLoading value) searchLoading,
    required TResult Function(_SearchCharactersError value) searchError,
    required TResult Function(_SearchCharactersLoadSuccess value) searchLoaded,
  }) {
    return searchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharactersInitial value)? initial,
    TResult? Function(_CharactersLoading value)? loading,
    TResult? Function(_CharactersError value)? error,
    TResult? Function(_CharactersLoadSuccess value)? loaded,
    TResult? Function(_SearchCharactersLoading value)? searchLoading,
    TResult? Function(_SearchCharactersError value)? searchError,
    TResult? Function(_SearchCharactersLoadSuccess value)? searchLoaded,
  }) {
    return searchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharactersInitial value)? initial,
    TResult Function(_CharactersLoading value)? loading,
    TResult Function(_CharactersError value)? error,
    TResult Function(_CharactersLoadSuccess value)? loaded,
    TResult Function(_SearchCharactersLoading value)? searchLoading,
    TResult Function(_SearchCharactersError value)? searchError,
    TResult Function(_SearchCharactersLoadSuccess value)? searchLoaded,
    required TResult orElse(),
  }) {
    if (searchError != null) {
      return searchError(this);
    }
    return orElse();
  }
}

abstract class _SearchCharactersError implements CharactersState {
  const factory _SearchCharactersError(final String message) =
      _$SearchCharactersErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SearchCharactersErrorImplCopyWith<_$SearchCharactersErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchCharactersLoadSuccessImplCopyWith<$Res> {
  factory _$$SearchCharactersLoadSuccessImplCopyWith(
          _$SearchCharactersLoadSuccessImpl value,
          $Res Function(_$SearchCharactersLoadSuccessImpl) then) =
      __$$SearchCharactersLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CharactersEntity> characters, bool hasReachedMax});
}

/// @nodoc
class __$$SearchCharactersLoadSuccessImplCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res,
        _$SearchCharactersLoadSuccessImpl>
    implements _$$SearchCharactersLoadSuccessImplCopyWith<$Res> {
  __$$SearchCharactersLoadSuccessImplCopyWithImpl(
      _$SearchCharactersLoadSuccessImpl _value,
      $Res Function(_$SearchCharactersLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_$SearchCharactersLoadSuccessImpl(
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharactersEntity>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchCharactersLoadSuccessImpl
    implements _SearchCharactersLoadSuccess {
  const _$SearchCharactersLoadSuccessImpl(
      {required final List<CharactersEntity> characters,
      this.hasReachedMax = false})
      : _characters = characters;

  final List<CharactersEntity> _characters;
  @override
  List<CharactersEntity> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  @JsonKey()
  final bool hasReachedMax;

  @override
  String toString() {
    return 'CharactersState.searchLoaded(characters: $characters, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCharactersLoadSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_characters), hasReachedMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCharactersLoadSuccessImplCopyWith<_$SearchCharactersLoadSuccessImpl>
      get copyWith => __$$SearchCharactersLoadSuccessImplCopyWithImpl<
          _$SearchCharactersLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(
            List<CharactersEntity> characters, bool hasReachedMax, int count)
        loaded,
    required TResult Function() searchLoading,
    required TResult Function(String message) searchError,
    required TResult Function(
            List<CharactersEntity> characters, bool hasReachedMax)
        searchLoaded,
  }) {
    return searchLoaded(characters, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(
            List<CharactersEntity> characters, bool hasReachedMax, int count)?
        loaded,
    TResult? Function()? searchLoading,
    TResult? Function(String message)? searchError,
    TResult? Function(List<CharactersEntity> characters, bool hasReachedMax)?
        searchLoaded,
  }) {
    return searchLoaded?.call(characters, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(
            List<CharactersEntity> characters, bool hasReachedMax, int count)?
        loaded,
    TResult Function()? searchLoading,
    TResult Function(String message)? searchError,
    TResult Function(List<CharactersEntity> characters, bool hasReachedMax)?
        searchLoaded,
    required TResult orElse(),
  }) {
    if (searchLoaded != null) {
      return searchLoaded(characters, hasReachedMax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CharactersInitial value) initial,
    required TResult Function(_CharactersLoading value) loading,
    required TResult Function(_CharactersError value) error,
    required TResult Function(_CharactersLoadSuccess value) loaded,
    required TResult Function(_SearchCharactersLoading value) searchLoading,
    required TResult Function(_SearchCharactersError value) searchError,
    required TResult Function(_SearchCharactersLoadSuccess value) searchLoaded,
  }) {
    return searchLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharactersInitial value)? initial,
    TResult? Function(_CharactersLoading value)? loading,
    TResult? Function(_CharactersError value)? error,
    TResult? Function(_CharactersLoadSuccess value)? loaded,
    TResult? Function(_SearchCharactersLoading value)? searchLoading,
    TResult? Function(_SearchCharactersError value)? searchError,
    TResult? Function(_SearchCharactersLoadSuccess value)? searchLoaded,
  }) {
    return searchLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharactersInitial value)? initial,
    TResult Function(_CharactersLoading value)? loading,
    TResult Function(_CharactersError value)? error,
    TResult Function(_CharactersLoadSuccess value)? loaded,
    TResult Function(_SearchCharactersLoading value)? searchLoading,
    TResult Function(_SearchCharactersError value)? searchError,
    TResult Function(_SearchCharactersLoadSuccess value)? searchLoaded,
    required TResult orElse(),
  }) {
    if (searchLoaded != null) {
      return searchLoaded(this);
    }
    return orElse();
  }
}

abstract class _SearchCharactersLoadSuccess implements CharactersState {
  const factory _SearchCharactersLoadSuccess(
      {required final List<CharactersEntity> characters,
      final bool hasReachedMax}) = _$SearchCharactersLoadSuccessImpl;

  List<CharactersEntity> get characters;
  bool get hasReachedMax;
  @JsonKey(ignore: true)
  _$$SearchCharactersLoadSuccessImplCopyWith<_$SearchCharactersLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
