import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/domain/entities/info_entity.dart';
import 'package:rick_and_morty/features/characters/domain/entities/main_entity.dart';

part 'characters_model.freezed.dart';
part 'characters_model.g.dart';

@freezed
class CharactersModel with _$CharactersModel {
  const CharactersModel._();
  const factory CharactersModel({
    required Info info,
    @JsonKey(name: "results")
    required List<ResultsCharacters> resultsCharacters,
  }) = _CharactersModel;

  factory CharactersModel.fromJson(Map<String, dynamic> json) =>
      _$CharactersModelFromJson(json);

  MainEntity mapToEntity() {
    return MainEntity(
        info: info.mapToEntity(),
        charactersEntity:
            resultsCharacters.map((result) => result.mapToEntity()).toList());
  }
}

@freezed
class Info with _$Info {
  const Info._();
  const factory Info({
    required int count,
    required int pages,
    String? next,
    String? prev,
  }) = _Info;

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);

  InfoEntity mapToEntity() {
    return InfoEntity(
      count: count,
      pages: pages,
    );
  }
}

@freezed
class ResultsCharacters with _$ResultsCharacters {
  const ResultsCharacters._();
  const factory ResultsCharacters({
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

  factory ResultsCharacters.fromJson(Map<String, dynamic> json) =>
      _$ResultsCharactersFromJson(json);

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

  CharacterLocationEntity mapToEntity() {
    return CharacterLocationEntity(
      name: name ?? '',
      url: url ?? '',
    );
  }
}
