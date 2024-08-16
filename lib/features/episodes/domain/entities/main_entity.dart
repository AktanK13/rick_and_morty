import 'package:equatable/equatable.dart';
import 'package:rick_and_morty/features/characters/domain/entities/info_entity.dart';
import 'package:rick_and_morty/features/episodes/domain/entities/episodes_entity.dart';

class MainEntity extends Equatable {
  const MainEntity({
    required this.info,
    required this.episodeentity,
  });
  final InfoEntity info;
  final List<EpisodesEntity> episodeentity;

  @override
  List<Object?> get props => [
        info,
        episodeentity,
      ];
}