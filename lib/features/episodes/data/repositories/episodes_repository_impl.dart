import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/features/episodes/data/datasources/episodes_remote_data_source.dart';
import 'package:rick_and_morty/features/episodes/domain/entities/episodes_entity.dart';
import 'package:rick_and_morty/features/episodes/domain/repositories/episodes_repository.dart';

class EpisodesRepositoryImpl implements EpisodesRepository {
  EpisodesRepositoryImpl({required this.remoteDataSource});

  final EpisodesRemoteDataSource remoteDataSource;

  @override
  Future<Either<String, List<EpisodesEntity>>> getEpisodes(int page) async {
    try {
      final episodes = await remoteDataSource.fetchEpisodes(page);
      return Right(episodes);
    } catch (e) {
      return Left('Failed to fetch episodes: ${e.toString()}');
    }
  }
}
