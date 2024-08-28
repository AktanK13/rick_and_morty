import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/features/episodes/domain/entities/main_entity.dart';
import 'package:rick_and_morty/features/episodes/domain/repositories/episodes_repository.dart';

class EpisodesUsecase {
  EpisodesUsecase({required this.repository});

  final EpisodesRepository repository;

  Future<Either<String, MainEntity>> getEpisodes(int page) async {
    return await repository.getEpisodes(page);
  }
}
