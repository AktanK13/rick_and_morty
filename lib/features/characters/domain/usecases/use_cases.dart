import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/domain/entities/main_entity.dart';
import 'package:rick_and_morty/features/characters/domain/repositories/characters_repository.dart';

class CharactersUseCases {
  CharactersUseCases({required this.repository});

  final CharactersRepository repository;

  Future<Either<String, MainEntity>> getCharacters(
      int page, String? status, String? gender) async {
    return await repository.getCharacters(page, status, gender);
  }

  Future<Either<String, List<CharactersEntity>>> searchCharacters(
      int page, String name) async {
    return await repository.searchCharacters(page, name);
  }
}
