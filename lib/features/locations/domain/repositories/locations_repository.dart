

import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/features/locations/data/models/main_model.dart';

abstract class LocationsRepository {
  Future<Either<String, MainModel>> getLocations(int page);
}