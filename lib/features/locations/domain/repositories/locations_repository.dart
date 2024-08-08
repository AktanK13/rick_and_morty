

import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/features/locations/domain/entities/location_entity.dart';

abstract class LocationsRepository {
  Future<Either<String, List<LocationsEntity>>> getLocations(int page);
}