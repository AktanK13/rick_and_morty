import 'package:equatable/equatable.dart';

class CharactersEntity extends Equatable {
  final int id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final OriginEntity origin;
  final LocationEntity location;
  final String image;
  final List<String> episode;
  final String url;
  final String created;

  const CharactersEntity(
      {required this.id,
      required this.name,
      required this.status,
      required this.species,
      required this.type,
      required this.gender,
      required this.origin,
      required this.location,
      required this.image,
      required this.episode,
      required this.url,
      required this.created});

  @override
  List<Object?> get props => [
        id,
        name,
        status,
        species,
        type,
        gender,
        origin,
        location,
        image,
        episode,
        url,
        created,
      ];
}

class OriginEntity {
  final String name;
  final String url;

  OriginEntity({required this.name, required this.url});
}

class LocationEntity {
  final String name;
  final String url;

  LocationEntity({required this.name, required this.url});
}
