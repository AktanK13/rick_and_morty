import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/features/episodes/data/models/episodes_model.dart';

abstract class EpisodesRepository {
  Future<Either<String, EpisodesModel>> getEpisodes(int page);
}
