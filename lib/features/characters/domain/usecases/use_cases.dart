import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/domain/repositories/characters_repository.dart';

class UseCases {
  final CharactersRepository repository;
  UseCases({required this.repository});

  Future<Either<String, List<CharactersEntity>>> getCharacters(int page) async {
    return await repository.getCharacters(page);
  }
}
