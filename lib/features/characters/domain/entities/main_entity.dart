import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/domain/entities/info_entity.dart';

part 'main_entity.freezed.dart';

@freezed
class MainEntity with _$MainEntity {
  const factory MainEntity({
    required InfoEntity info,
    required List<CharactersEntity> charactersEntity,
  }) = _MainEntity;
}
