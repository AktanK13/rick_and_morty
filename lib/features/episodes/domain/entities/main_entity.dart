import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/features/episodes/data/models/episodes_model.dart';
import 'package:rick_and_morty/features/episodes/domain/entities/episodes_entity.dart';

part 'main_entity.freezed.dart';

@freezed
class MainEntity with _$MainEntity {
  const factory MainEntity({
    required Info info,
    required List<EpisodesEntity> episodeEntity,
  }) = _MainEntity;
}
