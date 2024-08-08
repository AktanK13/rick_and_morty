import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/features/episodes/domain/entities/episodes_entity.dart';

abstract class EpisodesRepository {
  Future<Either<String, List<EpisodesEntity>>> getEpisodes(int page);
}
