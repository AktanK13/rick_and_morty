import 'package:freezed_annotation/freezed_annotation.dart';

part 'episodes_entity.freezed.dart';

@freezed
class EpisodesEntity with _$EpisodesEntity {
  const factory EpisodesEntity({
    required int id,
    required String name,
    required String airDate,
    required String episode,
    required List<String> characters,
    required String url,
    required String created,
  }) = _EpisodesEntity;
}
