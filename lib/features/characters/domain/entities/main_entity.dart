import 'package:equatable/equatable.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/domain/entities/info_entity.dart';

class MainEntity extends Equatable {
  const MainEntity({
    required this.info,
    required this.charactersEntity,
  });
  final InfoEntity info;
  final List<CharactersEntity> charactersEntity;

  @override
  List<Object?> get props => [
        info,
        charactersEntity,
      ];
}
