import 'package:rick_and_morty/features/locations/domain/entities/location_entity.dart';

class LocationsModel extends LocationsEntity {
  const LocationsModel({
    required super.id,
    required super.name,
    required super.type,
    required super.dimension,
    required super.residents,
    required super.url,
    required super.created,
  });

  // Convert JSON to LocationsModel
  factory LocationsModel.fromJson(Map<String, dynamic> json) {
    return LocationsModel(
      id: json['id'],
      name: json['name'],
      type: json['type'],
      dimension: json['dimension'],
      residents: List<String>.from(json['residents']),
      url: json['url'],
      created: json['created'],
    );
  }

  // Convert LocationsModel to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'type': type,
      'dimension': dimension,
      'residents': residents,
      'url': url,
      'created': created,
    };
  }
}