// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainEntity {
  InfoEntity get info => throw _privateConstructorUsedError;
  List<CharactersEntity> get charactersEntity =>
      throw _privateConstructorUsedError;

  /// Create a copy of MainEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainEntityCopyWith<MainEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEntityCopyWith<$Res> {
  factory $MainEntityCopyWith(
          MainEntity value, $Res Function(MainEntity) then) =
      _$MainEntityCopyWithImpl<$Res, MainEntity>;
  @useResult
  $Res call({InfoEntity info, List<CharactersEntity> charactersEntity});

  $InfoEntityCopyWith<$Res> get info;
}

/// @nodoc
class _$MainEntityCopyWithImpl<$Res, $Val extends MainEntity>
    implements $MainEntityCopyWith<$Res> {
  _$MainEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? charactersEntity = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as InfoEntity,
      charactersEntity: null == charactersEntity
          ? _value.charactersEntity
          : charactersEntity // ignore: cast_nullable_to_non_nullable
              as List<CharactersEntity>,
    ) as $Val);
  }

  /// Create a copy of MainEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InfoEntityCopyWith<$Res> get info {
    return $InfoEntityCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MainEntityImplCopyWith<$Res>
    implements $MainEntityCopyWith<$Res> {
  factory _$$MainEntityImplCopyWith(
          _$MainEntityImpl value, $Res Function(_$MainEntityImpl) then) =
      __$$MainEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InfoEntity info, List<CharactersEntity> charactersEntity});

  @override
  $InfoEntityCopyWith<$Res> get info;
}

/// @nodoc
class __$$MainEntityImplCopyWithImpl<$Res>
    extends _$MainEntityCopyWithImpl<$Res, _$MainEntityImpl>
    implements _$$MainEntityImplCopyWith<$Res> {
  __$$MainEntityImplCopyWithImpl(
      _$MainEntityImpl _value, $Res Function(_$MainEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? charactersEntity = null,
  }) {
    return _then(_$MainEntityImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as InfoEntity,
      charactersEntity: null == charactersEntity
          ? _value._charactersEntity
          : charactersEntity // ignore: cast_nullable_to_non_nullable
              as List<CharactersEntity>,
    ));
  }
}

/// @nodoc

class _$MainEntityImpl implements _MainEntity {
  const _$MainEntityImpl(
      {required this.info,
      required final List<CharactersEntity> charactersEntity})
      : _charactersEntity = charactersEntity;

  @override
  final InfoEntity info;
  final List<CharactersEntity> _charactersEntity;
  @override
  List<CharactersEntity> get charactersEntity {
    if (_charactersEntity is EqualUnmodifiableListView)
      return _charactersEntity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_charactersEntity);
  }

  @override
  String toString() {
    return 'MainEntity(info: $info, charactersEntity: $charactersEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainEntityImpl &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality()
                .equals(other._charactersEntity, _charactersEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info,
      const DeepCollectionEquality().hash(_charactersEntity));

  /// Create a copy of MainEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainEntityImplCopyWith<_$MainEntityImpl> get copyWith =>
      __$$MainEntityImplCopyWithImpl<_$MainEntityImpl>(this, _$identity);
}

abstract class _MainEntity implements MainEntity {
  const factory _MainEntity(
          {required final InfoEntity info,
          required final List<CharactersEntity> charactersEntity}) =
      _$MainEntityImpl;

  @override
  InfoEntity get info;
  @override
  List<CharactersEntity> get charactersEntity;

  /// Create a copy of MainEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainEntityImplCopyWith<_$MainEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
