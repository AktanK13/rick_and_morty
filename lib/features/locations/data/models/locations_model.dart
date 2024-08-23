import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/features/locations/domain/entities/location_entity.dart';

part 'locations_model.freezed.dart';
part 'locations_model.g.dart';

@freezed
class LocationsModel with _$LocationsModel {
  const LocationsModel._();
  const factory LocationsModel({
    required Info info,
    required List<Results> results,
  }) = _LocationsModel;

  factory LocationsModel.fromJson(Map<String, dynamic> json) =>
      _$LocationsModelFromJson(json);

  List<LocationsEntity> mapToEntity() {
    return results.map((result) => result.toEntity()).toList();
  }
}

@freezed
class Info with _$Info {
  const factory Info({
    required int count,
    required int pages,
    String? next,
    String? prev,
  }) = _Info;

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}

@freezed
class Results with _$Results {
  const Results._();
  const factory Results({
    required int id,
    required String name,
    String? type,
    String? dimension,
    List<String>? residents,
    required String url,
    required String created,
  }) = _Results;

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);

  LocationsEntity toEntity() {
    return LocationsEntity(
      id: id,
      name: name,
      type: type ?? '',
      dimension: dimension ?? '',
      residents: residents ?? [],
      url: url,
      created: created,
    );
  }
}
