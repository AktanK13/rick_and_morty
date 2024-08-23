

import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/features/locations/data/models/locations_model.dart';

abstract class LocationsRepository {
  Future<Either<String, LocationsModel>> getLocations(int page);
}