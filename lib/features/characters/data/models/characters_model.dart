import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';

class CharactersModel extends CharactersEntity {
  const CharactersModel(
      {required super.id,
      required super.name,
      required super.status,
      required super.species,
      required super.type,
      required super.gender,
      required super.origin,
      required super.location,
      required super.image,
      required super.episode,
      required super.url,
      required super.created});

  factory CharactersModel.fromJson(Map<String, dynamic> json) {
    return CharactersModel(
      id: json['id'],
      name: json['name'],
      status: json['status'],
      species: json['species'],
      type: json['type'],
      gender: json['gender'],
      origin: Origin.fromJson(json['origin']),
      location: Location.fromJson(json['location']),
      image: json['image'],
      episode: List<String>.from(json['episode']),
      url: json['url'],
      created: json['created'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['status'] = status;
    data['species'] = species;
    data['type'] = type;
    data['gender'] = gender;
    data['origin'] = origin.toJson();
    data['location'] = location.toJson();
    data['image'] = image;
    data['episode'] = episode;
    data['url'] = url;
    data['created'] = created;
    return data;
  }
}
