import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/features/episodes/data/models/main_model.dart';

abstract class EpisodesRepository {
  Future<Either<String, MainModel>> getEpisodes(int page);
}
