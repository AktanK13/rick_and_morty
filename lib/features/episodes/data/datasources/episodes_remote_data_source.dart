import 'package:dio/dio.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/features/characters/data/models/info_model.dart';
import 'package:rick_and_morty/features/episodes/data/models/episodes_models.dart';
import 'package:rick_and_morty/features/episodes/data/models/main_model.dart';

class EpisodesRemoteDataSource {
  final Dio client;
  EpisodesRemoteDataSource({required this.client});

  Future<MainModel> fetchEpisodes(int page) async {
    try {
      final response = await client.get(
        AppConsts.episodessUrl,
        queryParameters: {
          'page': page,
        },
      );

      if (response.statusCode == 200) {
        final List<EpisodesModel> episodes = parseData(response.data);
        final InfoModel info = parseInfoData(response.data);
        final MainModel data =
            MainModel(episodeentity: episodes, info: info);
        return data;
      } else {
        throw Exception('Failed to load episodes');
      }
    } catch (e) {
      throw Exception('Failed to fetch episodes: $e');
    }
  }

  List<EpisodesModel> parseData(responseBody) {
    final List<dynamic> jsonList = responseBody['results'];
    return jsonList.map((json) => EpisodesModel.fromJson(json)).toList();
  }
  InfoModel parseInfoData(responseBody) {
    final Map<String, dynamic> jsonInfo = responseBody['info'];
    return InfoModel.fromJson(jsonInfo);
  }
}
