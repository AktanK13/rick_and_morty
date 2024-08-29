import 'package:freezed_annotation/freezed_annotation.dart';

part 'entities.freezed.dart';

@freezed
class CharactersEntity with _$CharactersEntity {
  const factory CharactersEntity({
    required int id,
    required String name,
    required String status,
    required String species,
    required String type,
    required String gender,
    required OriginEntity origin,
    required CharacterLocationEntity location,
    required String image,
    required List<String> episode,
    required String url,
    required String created,
  }) = _CharactersEntity;
}

@freezed
class OriginEntity with _$OriginEntity {
  const factory OriginEntity({
    required String name,
    required String url,
  }) = _OriginEntity;
}

@freezed
class CharacterLocationEntity with _$CharacterLocationEntity {
  const factory CharacterLocationEntity({
    required String name,
    required String url,
  }) = _CharacterLocationEntity;
}
