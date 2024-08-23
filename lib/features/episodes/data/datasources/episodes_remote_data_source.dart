import 'package:dio/dio.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/features/episodes/data/models/episodes_model.dart';

class EpisodesRemoteDataSource {
  final Dio client;
  EpisodesRemoteDataSource({required this.client});

  Future<EpisodesModel> fetchEpisodes(int page) async {
    try {
      final response = await client.get(
        AppConsts.episodessUrl,
        queryParameters: {
          'page': page,
        },
      );

      if (response.statusCode == 200) {
        return EpisodesModel.fromJson(response.data);
      } else {
        throw Exception('Failed to load episodes');
      }
    } catch (e) {
      throw Exception('Failed to fetch episodes: $e');
    }
  }
}
