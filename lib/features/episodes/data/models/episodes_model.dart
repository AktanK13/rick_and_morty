import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/features/episodes/domain/entities/episodes_entity.dart';
import 'package:rick_and_morty/features/episodes/domain/entities/main_entity.dart';

part 'episodes_model.freezed.dart';
part 'episodes_model.g.dart';

@freezed
class EpisodesModel with _$EpisodesModel {
  const EpisodesModel._();
  const factory EpisodesModel({
    required Info info,
    @JsonKey(name: "results") required List<ResultsEpisodes> episodeResults,
  }) = _EpisodesModel;

  factory EpisodesModel.fromJson(Map<String, dynamic> json) =>
      _$EpisodesModelFromJson(json);

  MainEntity mapToEntity() {
    return MainEntity(
      info: info,
      episodeEntity: episodeResults.map((result) => result.toEntity()).toList(),
    );
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
class ResultsEpisodes with _$ResultsEpisodes {
  const ResultsEpisodes._();
  const factory ResultsEpisodes({
    required int id,
    required String name,
    @JsonKey(name: "air_date") String? airDate,
    String? episode,
    List<String>? characters,
    required String url,
    required String created,
  }) = _ResultsEpisodes;

  factory ResultsEpisodes.fromJson(Map<String, dynamic> json) =>
      _$ResultsEpisodesFromJson(json);

  EpisodesEntity toEntity() {
    return EpisodesEntity(
      id: id,
      name: name,
      airDate: airDate ?? '',
      episode: episode ?? '',
      characters: characters ?? [],
      url: url,
      created: created,
    );
  }
}
