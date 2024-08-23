import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';

part 'characters_model.freezed.dart';
part 'characters_model.g.dart';

@freezed
class CharactersModel with _$CharactersModel {
  const CharactersModel._();
  const factory CharactersModel({
    required Info info,
    required List<Results> results,
  }) = _CharactersModel;

  factory CharactersModel.fromJson(Map<String, dynamic> json) =>
      _$CharactersModelFromJson(json);

  List<CharactersEntity> mapToEntity() {
    return results.map((result) => result.mapToEntity()).toList();
  }
}

@freezed
class Info with _$Info {
  const factory Info({
    required int count,
    required int pages,
    String? next,
    String? prev,
  }) = _Info;

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}

@freezed
class Results with _$Results {
  const Results._();
  const factory Results({
    required int id,
    required String name,
    required String status,
    String? species,
    String? type,
    String? gender,
    Origin? origin,
    Location? location,
    String? image,
    List<String>? episode,
    required String url,
    required String created,
  }) = _Results;

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);

  CharactersEntity mapToEntity() {
    return CharactersEntity(
      id: id,
      name: name,
      status: status,
      species: species ?? '',
      type: type ?? '',
      gender: gender ?? '',
      origin: origin!.mapToEntity(),
      location: location!.mapToEntity(),
      image: image ?? '',
      episode: episode ?? [],
      url: url,
      created: created,
    );
  }
}

@freezed
class Origin with _$Origin {
  const Origin._();
  const factory Origin({
    String? name,
    String? url,
  }) = _Origin;

  factory Origin.fromJson(Map<String, dynamic> json) => _$OriginFromJson(json);

  OriginEntity mapToEntity() {
    return OriginEntity(
      name: name ?? '',
      url: url ?? '',
    );
  }
}

@freezed
class Location with _$Location {
  const Location._();
  const factory Location({
    String? name,
    String? url,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  LocationEntity mapToEntity() {
    return LocationEntity(
      name: name ?? '',
      url: url ?? '',
    );
  }
}
