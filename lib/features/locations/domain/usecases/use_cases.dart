import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/features/locations/domain/entities/main.entity.dart';
import 'package:rick_and_morty/features/locations/domain/repositories/locations_repository.dart';

class LocationsUseCases {
  LocationsUseCases({required this.repository});
  final LocationsRepository repository;

  Future<Either<String, MainEntity>> getLocations(int page) async {
    return await repository.getLocations(page);
  }
}
