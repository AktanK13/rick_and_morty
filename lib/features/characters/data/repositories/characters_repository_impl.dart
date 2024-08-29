import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/features/characters/data/datasources/characters_remote_data_source.dart';
import 'package:rick_and_morty/features/characters/domain/entities/main_entity.dart';
import 'package:rick_and_morty/features/characters/domain/repositories/characters_repository.dart';

class CharactersRepositoryImpl implements CharactersRepository {
  final CharactersRemoteDataSource remoteDataSource;

  CharactersRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<String, MainEntity>> getCharacters(
      int page, String? status, String? gender) async {
    try {
      final characters =
          await remoteDataSource.fetchCharacters(page, status, gender);
      return Right(characters.mapToEntity());
    } catch (e) {
      return Left('Failed to fetch characters: ${e.toString()}');
    }
  }

  @override
  Future<Either<String, MainEntity>> searchCharacters(
      int page, String name) async {
    try {
      final characters =
          await remoteDataSource.fetchSearchedCharacters(page, name);
      return Right(characters.mapToEntity());
    } catch (e) {
      return Left('Failed to fetch characters: ${e.toString()}');
    }
  }
}
