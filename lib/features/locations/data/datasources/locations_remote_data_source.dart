import 'package:dio/dio.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/features/locations/data/models/locations_model.dart';

class LocationsRemoteDataSource {
  LocationsRemoteDataSource({required this.client});

  final Dio client;

  Future<List<LocationsModel>> fetchLocations(int page) async {
    try {
      final response = await client.get(
        AppConsts.locationsUrl,
        queryParameters: {
          'page': page,
        },
      );

      if (response.statusCode == 200) {
        final List<LocationsModel> locations = parseData(response.data);
        return locations;
      } else {
        throw Exception('Failed to load Locations');
      }
    } catch (e) {
      throw Exception('Failed to fetch locations: $e');
    }
  }

  List<LocationsModel> parseData(responseBody) {
    final List<dynamic> jsonList = responseBody['results'];
    return jsonList.map((json) => LocationsModel.fromJson(json)).toList();
  }
}
