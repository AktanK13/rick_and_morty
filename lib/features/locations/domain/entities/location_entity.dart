import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_entity.freezed.dart';

@freezed
class LocationEntity with _$LocationEntity {
  const factory LocationEntity({
  required int id,
  required String name,
  required String type,
  required String dimension,
  required List<String> residents,
  required String url,
  required String created,
  }) = _LocationEntity;
}
