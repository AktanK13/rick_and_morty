// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InfoEntity {
  int get count => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;

  /// Create a copy of InfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InfoEntityCopyWith<InfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoEntityCopyWith<$Res> {
  factory $InfoEntityCopyWith(
          InfoEntity value, $Res Function(InfoEntity) then) =
      _$InfoEntityCopyWithImpl<$Res, InfoEntity>;
  @useResult
  $Res call({int count, int pages});
}

/// @nodoc
class _$InfoEntityCopyWithImpl<$Res, $Val extends InfoEntity>
    implements $InfoEntityCopyWith<$Res> {
  _$InfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? pages = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InfoEntityImplCopyWith<$Res>
    implements $InfoEntityCopyWith<$Res> {
  factory _$$InfoEntityImplCopyWith(
          _$InfoEntityImpl value, $Res Function(_$InfoEntityImpl) then) =
      __$$InfoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, int pages});
}

/// @nodoc
class __$$InfoEntityImplCopyWithImpl<$Res>
    extends _$InfoEntityCopyWithImpl<$Res, _$InfoEntityImpl>
    implements _$$InfoEntityImplCopyWith<$Res> {
  __$$InfoEntityImplCopyWithImpl(
      _$InfoEntityImpl _value, $Res Function(_$InfoEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of InfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? pages = null,
  }) {
    return _then(_$InfoEntityImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InfoEntityImpl implements _InfoEntity {
  const _$InfoEntityImpl({required this.count, required this.pages});

  @override
  final int count;
  @override
  final int pages;

  @override
  String toString() {
    return 'InfoEntity(count: $count, pages: $pages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoEntityImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.pages, pages) || other.pages == pages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count, pages);

  /// Create a copy of InfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InfoEntityImplCopyWith<_$InfoEntityImpl> get copyWith =>
      __$$InfoEntityImplCopyWithImpl<_$InfoEntityImpl>(this, _$identity);
}

abstract class _InfoEntity implements InfoEntity {
  const factory _InfoEntity(
      {required final int count, required final int pages}) = _$InfoEntityImpl;

  @override
  int get count;
  @override
  int get pages;

  /// Create a copy of InfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InfoEntityImplCopyWith<_$InfoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
