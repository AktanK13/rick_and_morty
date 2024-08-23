import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/features/episodes/data/models/episodes_model.dart';
import 'package:rick_and_morty/features/episodes/domain/repositories/episodes_repository.dart';

class EpisodesUsecase {
  EpisodesUsecase({required this.repository});

  final EpisodesRepository repository;

  Future<Either<String, EpisodesModel>> getEpisodes(int page) async {
    return await repository.getEpisodes(page);
  }
}
