import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/features/episodes/domain/entities/main_entity.dart';

abstract class EpisodesRepository {
  Future<Either<String, MainEntity>> getEpisodes(int page);
}
