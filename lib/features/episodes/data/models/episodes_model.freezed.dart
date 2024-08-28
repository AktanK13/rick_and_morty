// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episodes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EpisodesModel _$EpisodesModelFromJson(Map<String, dynamic> json) {
  return _EpisodesModel.fromJson(json);
}

/// @nodoc
mixin _$EpisodesModel {
  Info get info => throw _privateConstructorUsedError;
  @JsonKey(name: "results")
  List<ResultsEpisodes> get episodeResults =>
      throw _privateConstructorUsedError;

  /// Serializes this EpisodesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EpisodesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpisodesModelCopyWith<EpisodesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodesModelCopyWith<$Res> {
  factory $EpisodesModelCopyWith(
          EpisodesModel value, $Res Function(EpisodesModel) then) =
      _$EpisodesModelCopyWithImpl<$Res, EpisodesModel>;
  @useResult
  $Res call(
      {Info info,
      @JsonKey(name: "results") List<ResultsEpisodes> episodeResults});

  $InfoCopyWith<$Res> get info;
}

/// @nodoc
class _$EpisodesModelCopyWithImpl<$Res, $Val extends EpisodesModel>
    implements $EpisodesModelCopyWith<$Res> {
  _$EpisodesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpisodesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? episodeResults = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info,
      episodeResults: null == episodeResults
          ? _value.episodeResults
          : episodeResults // ignore: cast_nullable_to_non_nullable
              as List<ResultsEpisodes>,
    ) as $Val);
  }

  /// Create a copy of EpisodesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InfoCopyWith<$Res> get info {
    return $InfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EpisodesModelImplCopyWith<$Res>
    implements $EpisodesModelCopyWith<$Res> {
  factory _$$EpisodesModelImplCopyWith(
          _$EpisodesModelImpl value, $Res Function(_$EpisodesModelImpl) then) =
      __$$EpisodesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Info info,
      @JsonKey(name: "results") List<ResultsEpisodes> episodeResults});

  @override
  $InfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$EpisodesModelImplCopyWithImpl<$Res>
    extends _$EpisodesModelCopyWithImpl<$Res, _$EpisodesModelImpl>
    implements _$$EpisodesModelImplCopyWith<$Res> {
  __$$EpisodesModelImplCopyWithImpl(
      _$EpisodesModelImpl _value, $Res Function(_$EpisodesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpisodesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? episodeResults = null,
  }) {
    return _then(_$EpisodesModelImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info,
      episodeResults: null == episodeResults
          ? _value._episodeResults
          : episodeResults // ignore: cast_nullable_to_non_nullable
              as List<ResultsEpisodes>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpisodesModelImpl extends _EpisodesModel {
  const _$EpisodesModelImpl(
      {required this.info,
      @JsonKey(name: "results")
      required final List<ResultsEpisodes> episodeResults})
      : _episodeResults = episodeResults,
        super._();

  factory _$EpisodesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpisodesModelImplFromJson(json);

  @override
  final Info info;
  final List<ResultsEpisodes> _episodeResults;
  @override
  @JsonKey(name: "results")
  List<ResultsEpisodes> get episodeResults {
    if (_episodeResults is EqualUnmodifiableListView) return _episodeResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_episodeResults);
  }

  @override
  String toString() {
    return 'EpisodesModel(info: $info, episodeResults: $episodeResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodesModelImpl &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality()
                .equals(other._episodeResults, _episodeResults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, info, const DeepCollectionEquality().hash(_episodeResults));

  /// Create a copy of EpisodesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodesModelImplCopyWith<_$EpisodesModelImpl> get copyWith =>
      __$$EpisodesModelImplCopyWithImpl<_$EpisodesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpisodesModelImplToJson(
      this,
    );
  }
}

abstract class _EpisodesModel extends EpisodesModel {
  const factory _EpisodesModel(
          {required final Info info,
          @JsonKey(name: "results")
          required final List<ResultsEpisodes> episodeResults}) =
      _$EpisodesModelImpl;
  const _EpisodesModel._() : super._();

  factory _EpisodesModel.fromJson(Map<String, dynamic> json) =
      _$EpisodesModelImpl.fromJson;

  @override
  Info get info;
  @override
  @JsonKey(name: "results")
  List<ResultsEpisodes> get episodeResults;

  /// Create a copy of EpisodesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpisodesModelImplCopyWith<_$EpisodesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Info _$InfoFromJson(Map<String, dynamic> json) {
  return _Info.fromJson(json);
}

/// @nodoc
mixin _$Info {
  int get count => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get prev => throw _privateConstructorUsedError;

  /// Serializes this Info to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Info
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InfoCopyWith<Info> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoCopyWith<$Res> {
  factory $InfoCopyWith(Info value, $Res Function(Info) then) =
      _$InfoCopyWithImpl<$Res, Info>;
  @useResult
  $Res call({int count, int pages, String? next, String? prev});
}

/// @nodoc
class _$InfoCopyWithImpl<$Res, $Val extends Info>
    implements $InfoCopyWith<$Res> {
  _$InfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Info
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? pages = null,
    Object? next = freezed,
    Object? prev = freezed,
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
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InfoImplCopyWith<$Res> implements $InfoCopyWith<$Res> {
  factory _$$InfoImplCopyWith(
          _$InfoImpl value, $Res Function(_$InfoImpl) then) =
      __$$InfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, int pages, String? next, String? prev});
}

/// @nodoc
class __$$InfoImplCopyWithImpl<$Res>
    extends _$InfoCopyWithImpl<$Res, _$InfoImpl>
    implements _$$InfoImplCopyWith<$Res> {
  __$$InfoImplCopyWithImpl(_$InfoImpl _value, $Res Function(_$InfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of Info
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? pages = null,
    Object? next = freezed,
    Object? prev = freezed,
  }) {
    return _then(_$InfoImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InfoImpl implements _Info {
  const _$InfoImpl(
      {required this.count, required this.pages, this.next, this.prev});

  factory _$InfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InfoImplFromJson(json);

  @override
  final int count;
  @override
  final int pages;
  @override
  final String? next;
  @override
  final String? prev;

  @override
  String toString() {
    return 'Info(count: $count, pages: $pages, next: $next, prev: $prev)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.prev, prev) || other.prev == prev));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, count, pages, next, prev);

  /// Create a copy of Info
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InfoImplCopyWith<_$InfoImpl> get copyWith =>
      __$$InfoImplCopyWithImpl<_$InfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InfoImplToJson(
      this,
    );
  }
}

abstract class _Info implements Info {
  const factory _Info(
      {required final int count,
      required final int pages,
      final String? next,
      final String? prev}) = _$InfoImpl;

  factory _Info.fromJson(Map<String, dynamic> json) = _$InfoImpl.fromJson;

  @override
  int get count;
  @override
  int get pages;
  @override
  String? get next;
  @override
  String? get prev;

  /// Create a copy of Info
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InfoImplCopyWith<_$InfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultsEpisodes _$ResultsEpisodesFromJson(Map<String, dynamic> json) {
  return _ResultsEpisodes.fromJson(json);
}

/// @nodoc
mixin _$ResultsEpisodes {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "air_date")
  String? get airDate => throw _privateConstructorUsedError;
  String? get episode => throw _privateConstructorUsedError;
  List<String>? get characters => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get created => throw _privateConstructorUsedError;

  /// Serializes this ResultsEpisodes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResultsEpisodes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultsEpisodesCopyWith<ResultsEpisodes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsEpisodesCopyWith<$Res> {
  factory $ResultsEpisodesCopyWith(
          ResultsEpisodes value, $Res Function(ResultsEpisodes) then) =
      _$ResultsEpisodesCopyWithImpl<$Res, ResultsEpisodes>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: "air_date") String? airDate,
      String? episode,
      List<String>? characters,
      String url,
      String created});
}

/// @nodoc
class _$ResultsEpisodesCopyWithImpl<$Res, $Val extends ResultsEpisodes>
    implements $ResultsEpisodesCopyWith<$Res> {
  _$ResultsEpisodesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResultsEpisodes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? airDate = freezed,
    Object? episode = freezed,
    Object? characters = freezed,
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
      airDate: freezed == airDate
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: freezed == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String?,
      characters: freezed == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
}

/// @nodoc
abstract class _$$ResultsEpisodesImplCopyWith<$Res>
    implements $ResultsEpisodesCopyWith<$Res> {
  factory _$$ResultsEpisodesImplCopyWith(_$ResultsEpisodesImpl value,
          $Res Function(_$ResultsEpisodesImpl) then) =
      __$$ResultsEpisodesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: "air_date") String? airDate,
      String? episode,
      List<String>? characters,
      String url,
      String created});
}

/// @nodoc
class __$$ResultsEpisodesImplCopyWithImpl<$Res>
    extends _$ResultsEpisodesCopyWithImpl<$Res, _$ResultsEpisodesImpl>
    implements _$$ResultsEpisodesImplCopyWith<$Res> {
  __$$ResultsEpisodesImplCopyWithImpl(
      _$ResultsEpisodesImpl _value, $Res Function(_$ResultsEpisodesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultsEpisodes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? airDate = freezed,
    Object? episode = freezed,
    Object? characters = freezed,
    Object? url = null,
    Object? created = null,
  }) {
    return _then(_$ResultsEpisodesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      airDate: freezed == airDate
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: freezed == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String?,
      characters: freezed == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
@JsonSerializable()
class _$ResultsEpisodesImpl extends _ResultsEpisodes {
  const _$ResultsEpisodesImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: "air_date") this.airDate,
      this.episode,
      final List<String>? characters,
      required this.url,
      required this.created})
      : _characters = characters,
        super._();

  factory _$ResultsEpisodesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultsEpisodesImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: "air_date")
  final String? airDate;
  @override
  final String? episode;
  final List<String>? _characters;
  @override
  List<String>? get characters {
    final value = _characters;
    if (value == null) return null;
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String url;
  @override
  final String created;

  @override
  String toString() {
    return 'ResultsEpisodes(id: $id, name: $name, airDate: $airDate, episode: $episode, characters: $characters, url: $url, created: $created)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultsEpisodesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.airDate, airDate) || other.airDate == airDate) &&
            (identical(other.episode, episode) || other.episode == episode) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.created, created) || other.created == created));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, airDate, episode,
      const DeepCollectionEquality().hash(_characters), url, created);

  /// Create a copy of ResultsEpisodes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultsEpisodesImplCopyWith<_$ResultsEpisodesImpl> get copyWith =>
      __$$ResultsEpisodesImplCopyWithImpl<_$ResultsEpisodesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultsEpisodesImplToJson(
      this,
    );
  }
}

abstract class _ResultsEpisodes extends ResultsEpisodes {
  const factory _ResultsEpisodes(
      {required final int id,
      required final String name,
      @JsonKey(name: "air_date") final String? airDate,
      final String? episode,
      final List<String>? characters,
      required final String url,
      required final String created}) = _$ResultsEpisodesImpl;
  const _ResultsEpisodes._() : super._();

  factory _ResultsEpisodes.fromJson(Map<String, dynamic> json) =
      _$ResultsEpisodesImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: "air_date")
  String? get airDate;
  @override
  String? get episode;
  @override
  List<String>? get characters;
  @override
  String get url;
  @override
  String get created;

  /// Create a copy of ResultsEpisodes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultsEpisodesImplCopyWith<_$ResultsEpisodesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
