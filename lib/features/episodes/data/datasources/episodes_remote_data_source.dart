import 'package:dio/dio.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/utils/injections.dart';
import 'package:rick_and_morty/features/episodes/data/models/episodes_model.dart';

class EpisodesRemoteDataSource {
  EpisodesRemoteDataSource();

  final client = getIt<Dio>();

  Future<EpisodesModel> fetchEpisodes(int page) async {
    try {
      final response = await client.get(
        AppConsts.episodessUrl,
        queryParameters: {
          'page': page,
        },
      );
      return EpisodesModel.fromJson(response.data);
    } on DioException catch (e) {
      throw Exception('Failed to fetch episodes: $e');
    }
  }
}
