import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/features/locations/data/models/locations_model.dart';
import 'package:rick_and_morty/features/locations/domain/entities/location_entity.dart';

part 'main.entity.freezed.dart';

@freezed
class MainEntity with _$MainEntity {
  const factory MainEntity({
    required Info info,
    required List<LocationEntity> locationEntity,
  }) = _MainEntity;
}
