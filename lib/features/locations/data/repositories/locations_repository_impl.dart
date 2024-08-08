import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/features/locations/data/datasources/locations_remote_data_source.dart';
import 'package:rick_and_morty/features/locations/domain/entities/location_entity.dart';
import 'package:rick_and_morty/features/locations/domain/repositories/locations_repository.dart';

class LocationsRepositoryImpl implements LocationsRepository {
  LocationsRepositoryImpl({required this.remoteDataSource});

  final LocationsRemoteDataSource remoteDataSource;


  @override
  Future<Either<String, List<LocationsEntity>>> getLocations(int page) async {
    try {
      final locations = await remoteDataSource.fetchLocations(page);
      return Right(locations);
    } catch (e) {
      return Left('Failed to fetch locations: ${e.toString()}');
    }
  }
}
