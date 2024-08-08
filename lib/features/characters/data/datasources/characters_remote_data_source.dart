import 'package:dio/dio.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/features/characters/data/models/characters_model.dart';

class CharactersRemoteDataSource {
  final Dio client;
  CharactersRemoteDataSource({required this.client});

  Future<List<CharactersModel>> fetchCharacters(int page) async {
    try {
      final response = await client.get(
        AppConsts.baseUrl,
        queryParameters: {
          'page': page,
        },
      );

      if (response.statusCode == 200) {
        final List<CharactersModel> characters = parseData(response.data);
        return characters;
      } else {
        throw Exception('Failed to load movies');
      }
    } catch (e) {
      throw Exception('Failed to fetch movies: $e');
    }
  }

  List<CharactersModel> parseData(responseBody) {
    final List<dynamic> jsonList = responseBody['results'];
    return jsonList.map((json) => CharactersModel.fromJson(json)).toList();
  }
}
