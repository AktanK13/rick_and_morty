import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';

abstract class CharactersRepository {
  Future<Either<String, List<CharactersEntity>>> getCharacters(int page);
  Future<Either<String, List<CharactersEntity>>> searchCharacters(int page, String name);
}
