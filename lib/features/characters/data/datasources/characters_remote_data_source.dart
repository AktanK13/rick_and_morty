import 'package:dio/dio.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/features/characters/data/models/characters_model.dart';

class CharactersRemoteDataSource {
  final Dio client;
  CharactersRemoteDataSource({required this.client});

  Future<CharactersModel> fetchCharacters(
      int page, String? status, String? gender) async {
    try {
      final response = await client.get(
        AppConsts.charactersUrl,
        queryParameters: {
          'page': page,
          'status': status,
          'gender': gender,
        },
      );

      if (response.statusCode == 200) {
        return CharactersModel.fromJson(response.data);
      } else {
        throw Exception('Failed to load characters');
      }
    } catch (e) {
      throw Exception('Failed to fetch characters: $e');
    }
  }

  Future<CharactersModel> fetchSearchedCharacters(int page, String name) async {
    try {
      final response = await client.get(
        AppConsts.charactersUrl,
        queryParameters: {
          'page': page,
          'name': name,
        },
      );

      if (response.statusCode == 200) {
        return CharactersModel.fromJson(response.data);
      } else {
        throw Exception('Failed to load characters');
      }
    } catch (e) {
      throw Exception('Failed to fetch characters: $e');
    }
  }
}
