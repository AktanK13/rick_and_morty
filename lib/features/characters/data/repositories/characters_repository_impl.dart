import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/features/characters/data/datasources/characters_remote_data_source.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/domain/repositories/characters_repository.dart';

class CharactersRepositoryImpl implements CharactersRepository {
  final CharactersRemoteDataSource remoteDataSource;

  CharactersRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<String, List<CharactersEntity>>> getCharacters(int page) async {
    try {
      final movies = await remoteDataSource.fetchCharacters(page);
      return Right(movies);
    } catch (e) {
      return Left('Failed to fetch movies: ${e.toString()}');
    }
  }
}
