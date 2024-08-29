import 'package:dio/dio.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/utils/injections.dart';
import 'package:rick_and_morty/features/locations/data/models/locations_model.dart';

class LocationsRemoteDataSource {
  LocationsRemoteDataSource();

  final client = getIt<Dio>();

  Future<LocationsModel> fetchLocations(int page) async {
    try {
      final response = await client.get(
        AppConsts.locationsUrl,
        queryParameters: {
          'page': page,
        },
      );
      return LocationsModel.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to fetch locations: $e');
    }
  }
}
