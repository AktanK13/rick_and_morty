import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/features/episodes/domain/entities/episodes_entity.dart';

part 'episodes_model.freezed.dart';
part 'episodes_model.g.dart';

@freezed
class EpisodesModel with _$EpisodesModel {
  const EpisodesModel._();
  const factory EpisodesModel({
    required Info info,
    required List<Results> results,
  }) = _EpisodesModel;

  factory EpisodesModel.fromJson(Map<String, dynamic> json) =>
      _$EpisodesModelFromJson(json);

  List<EpisodesEntity> mapToEntity() {
    return results.map((result) => result.toEntity()).toList();
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
    @JsonKey(name: "air_date") String? airDate,
    String? episode,
    List<String>? characters,
    required String url,
    required String created,
  }) = _Results;

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);

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
