import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/domain/entities/main_entity.dart';

abstract class CharactersRepository {
  Future<Either<String, MainEntity>> getCharacters(int page, String? status, String? gender);
  Future<Either<String, List<CharactersEntity>>> searchCharacters(int page, String name);
}
