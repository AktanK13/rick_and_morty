import 'package:equatable/equatable.dart';
import 'package:rick_and_morty/features/characters/domain/entities/info_entity.dart';
import 'package:rick_and_morty/features/locations/domain/entities/location_entity.dart';

class MainEntity extends Equatable {
  const MainEntity({
    required this.info,
    required this.locationsEntity,
  });
  final InfoEntity info;
  final List<LocationsEntity> locationsEntity;

  @override
  List<Object?> get props => [
        info,
        locationsEntity,
      ];
}