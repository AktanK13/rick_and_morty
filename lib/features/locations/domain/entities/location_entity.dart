import 'package:equatable/equatable.dart';

class LocationsEntity extends Equatable {
  const LocationsEntity(
      {required this.id,
      required this.name,
      required this.type,
      required this.dimension,
      required this.residents,
      required this.url,
      required this.created});

  final int id;
  final String name;
  final String type;
  final String dimension;
  final List<String> residents;
  final String url;
  final String created;

  @override
  List<Object?> get props =>
      [id, name, type, dimension, residents, url, created];
}