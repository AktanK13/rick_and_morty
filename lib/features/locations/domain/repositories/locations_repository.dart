

import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/features/locations/domain/entities/main.entity.dart';

abstract class LocationsRepository {
  Future<Either<String, MainEntity>> getLocations(int page);
}