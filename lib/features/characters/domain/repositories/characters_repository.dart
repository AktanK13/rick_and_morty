import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/features/characters/data/models/characters_model.dart';

abstract class CharactersRepository {
  Future<Either<String, CharactersModel>> getCharacters(int page, String? status, String? gender);
  Future<Either<String, CharactersModel>> searchCharacters(int page, String name);
}
