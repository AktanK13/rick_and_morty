// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CharactersEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get species => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  OriginEntity get origin => throw _privateConstructorUsedError;
  CharacterLocationEntity get location => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  List<String> get episode => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get created => throw _privateConstructorUsedError;

  /// Create a copy of CharactersEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharactersEntityCopyWith<CharactersEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersEntityCopyWith<$Res> {
  factory $CharactersEntityCopyWith(
          CharactersEntity value, $Res Function(CharactersEntity) then) =
      _$CharactersEntityCopyWithImpl<$Res, CharactersEntity>;
  @useResult
  $Res call(
      {int id,
      String name,
      String status,
      String species,
      String type,
      String gender,
      OriginEntity origin,
      CharacterLocationEntity location,
      String image,
      List<String> episode,
      String url,
      String created});

  $OriginEntityCopyWith<$Res> get origin;
  $CharacterLocationEntityCopyWith<$Res> get location;
}

/// @nodoc
class _$CharactersEntityCopyWithImpl<$Res, $Val extends CharactersEntity>
    implements $CharactersEntityCopyWith<$Res> {
  _$CharactersEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharactersEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? species = null,
    Object? type = null,
    Object? gender = null,
    Object? origin = null,
    Object? location = null,
    Object? image = null,
    Object? episode = null,
    Object? url = null,
    Object? created = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as OriginEntity,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as CharacterLocationEntity,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      episode: null == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<String>,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of CharactersEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OriginEntityCopyWith<$Res> get origin {
    return $OriginEntityCopyWith<$Res>(_value.origin, (value) {
      return _then(_value.copyWith(origin: value) as $Val);
    });
  }

  /// Create a copy of CharactersEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CharacterLocationEntityCopyWith<$Res> get location {
    return $CharacterLocationEntityCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CharactersEntityImplCopyWith<$Res>
    implements $CharactersEntityCopyWith<$Res> {
  factory _$$CharactersEntityImplCopyWith(_$CharactersEntityImpl value,
          $Res Function(_$CharactersEntityImpl) then) =
      __$$CharactersEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String status,
      String species,
      String type,
      String gender,
      OriginEntity origin,
      CharacterLocationEntity location,
      String image,
      List<String> episode,
      String url,
      String created});

  @override
  $OriginEntityCopyWith<$Res> get origin;
  @override
  $CharacterLocationEntityCopyWith<$Res> get location;
}

/// @nodoc
class __$$CharactersEntityImplCopyWithImpl<$Res>
    extends _$CharactersEntityCopyWithImpl<$Res, _$CharactersEntityImpl>
    implements _$$CharactersEntityImplCopyWith<$Res> {
  __$$CharactersEntityImplCopyWithImpl(_$CharactersEntityImpl _value,
      $Res Function(_$CharactersEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharactersEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? species = null,
    Object? type = null,
    Object? gender = null,
    Object? origin = null,
    Object? location = null,
    Object? image = null,
    Object? episode = null,
    Object? url = null,
    Object? created = null,
  }) {
    return _then(_$CharactersEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as OriginEntity,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as CharacterLocationEntity,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      episode: null == episode
          ? _value._episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<String>,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CharactersEntityImpl implements _CharactersEntity {
  const _$CharactersEntityImpl(
      {required this.id,
      required this.name,
      required this.status,
      required this.species,
      required this.type,
      required this.gender,
      required this.origin,
      required this.location,
      required this.image,
      required final List<String> episode,
      required this.url,
      required this.created})
      : _episode = episode;

  @override
  final int id;
  @override
  final String name;
  @override
  final String status;
  @override
  final String species;
  @override
  final String type;
  @override
  final String gender;
  @override
  final OriginEntity origin;
  @override
  final CharacterLocationEntity location;
  @override
  final String image;
  final List<String> _episode;
  @override
  List<String> get episode {
    if (_episode is EqualUnmodifiableListView) return _episode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_episode);
  }

  @override
  final String url;
  @override
  final String created;

  @override
  String toString() {
    return 'CharactersEntity(id: $id, name: $name, status: $status, species: $species, type: $type, gender: $gender, origin: $origin, location: $location, image: $image, episode: $episode, url: $url, created: $created)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._episode, _episode) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.created, created) || other.created == created));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      status,
      species,
      type,
      gender,
      origin,
      location,
      image,
      const DeepCollectionEquality().hash(_episode),
      url,
      created);

  /// Create a copy of CharactersEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersEntityImplCopyWith<_$CharactersEntityImpl> get copyWith =>
      __$$CharactersEntityImplCopyWithImpl<_$CharactersEntityImpl>(
          this, _$identity);
}

abstract class _CharactersEntity implements CharactersEntity {
  const factory _CharactersEntity(
      {required final int id,
      required final String name,
      required final String status,
      required final String species,
      required final String type,
      required final String gender,
      required final OriginEntity origin,
      required final CharacterLocationEntity location,
      required final String image,
      required final List<String> episode,
      required final String url,
      required final String created}) = _$CharactersEntityImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get status;
  @override
  String get species;
  @override
  String get type;
  @override
  String get gender;
  @override
  OriginEntity get origin;
  @override
  CharacterLocationEntity get location;
  @override
  String get image;
  @override
  List<String> get episode;
  @override
  String get url;
  @override
  String get created;

  /// Create a copy of CharactersEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharactersEntityImplCopyWith<_$CharactersEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OriginEntity {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Create a copy of OriginEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OriginEntityCopyWith<OriginEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OriginEntityCopyWith<$Res> {
  factory $OriginEntityCopyWith(
          OriginEntity value, $Res Function(OriginEntity) then) =
      _$OriginEntityCopyWithImpl<$Res, OriginEntity>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$OriginEntityCopyWithImpl<$Res, $Val extends OriginEntity>
    implements $OriginEntityCopyWith<$Res> {
  _$OriginEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OriginEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OriginEntityImplCopyWith<$Res>
    implements $OriginEntityCopyWith<$Res> {
  factory _$$OriginEntityImplCopyWith(
          _$OriginEntityImpl value, $Res Function(_$OriginEntityImpl) then) =
      __$$OriginEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$OriginEntityImplCopyWithImpl<$Res>
    extends _$OriginEntityCopyWithImpl<$Res, _$OriginEntityImpl>
    implements _$$OriginEntityImplCopyWith<$Res> {
  __$$OriginEntityImplCopyWithImpl(
      _$OriginEntityImpl _value, $Res Function(_$OriginEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of OriginEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$OriginEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OriginEntityImpl implements _OriginEntity {
  const _$OriginEntityImpl({required this.name, required this.url});

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'OriginEntity(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OriginEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of OriginEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OriginEntityImplCopyWith<_$OriginEntityImpl> get copyWith =>
      __$$OriginEntityImplCopyWithImpl<_$OriginEntityImpl>(this, _$identity);
}

abstract class _OriginEntity implements OriginEntity {
  const factory _OriginEntity(
      {required final String name,
      required final String url}) = _$OriginEntityImpl;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of OriginEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OriginEntityImplCopyWith<_$OriginEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CharacterLocationEntity {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Create a copy of CharacterLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharacterLocationEntityCopyWith<CharacterLocationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterLocationEntityCopyWith<$Res> {
  factory $CharacterLocationEntityCopyWith(CharacterLocationEntity value,
          $Res Function(CharacterLocationEntity) then) =
      _$CharacterLocationEntityCopyWithImpl<$Res, CharacterLocationEntity>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$CharacterLocationEntityCopyWithImpl<$Res,
        $Val extends CharacterLocationEntity>
    implements $CharacterLocationEntityCopyWith<$Res> {
  _$CharacterLocationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharacterLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterLocationEntityImplCopyWith<$Res>
    implements $CharacterLocationEntityCopyWith<$Res> {
  factory _$$CharacterLocationEntityImplCopyWith(
          _$CharacterLocationEntityImpl value,
          $Res Function(_$CharacterLocationEntityImpl) then) =
      __$$CharacterLocationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$CharacterLocationEntityImplCopyWithImpl<$Res>
    extends _$CharacterLocationEntityCopyWithImpl<$Res,
        _$CharacterLocationEntityImpl>
    implements _$$CharacterLocationEntityImplCopyWith<$Res> {
  __$$CharacterLocationEntityImplCopyWithImpl(
      _$CharacterLocationEntityImpl _value,
      $Res Function(_$CharacterLocationEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharacterLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$CharacterLocationEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CharacterLocationEntityImpl implements _CharacterLocationEntity {
  const _$CharacterLocationEntityImpl({required this.name, required this.url});

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'CharacterLocationEntity(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterLocationEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of CharacterLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterLocationEntityImplCopyWith<_$CharacterLocationEntityImpl>
      get copyWith => __$$CharacterLocationEntityImplCopyWithImpl<
          _$CharacterLocationEntityImpl>(this, _$identity);
}

abstract class _CharacterLocationEntity implements CharacterLocationEntity {
  const factory _CharacterLocationEntity(
      {required final String name,
      required final String url}) = _$CharacterLocationEntityImpl;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of CharacterLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharacterLocationEntityImplCopyWith<_$CharacterLocationEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
