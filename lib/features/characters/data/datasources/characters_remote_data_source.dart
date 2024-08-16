import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/features/characters/data/models/characters_model.dart';
import 'package:rick_and_morty/features/characters/data/models/info_model.dart';
import 'package:rick_and_morty/features/characters/data/models/main_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CharactersRemoteDataSource {
  final Dio client;
  CharactersRemoteDataSource({required this.client});

  Future<MainModel> fetchCharacters(
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
        final List<CharactersModel> characters = parseData(response.data);
        final InfoModel info = parseInfoData(response.data);
        final MainModel data =
            MainModel(charactersEntity: characters, info: info);

        return data;
      } else {
        throw Exception('Failed to load characters');
      }
    } catch (e) {
      throw Exception('Failed to fetch characters: $e');
    }
  }

  Future<List<CharactersModel>> fetchSearchedCharacters(
      int page, String name) async {
    try {
      final response = await client.get(
        AppConsts.charactersUrl,
        queryParameters: {
          'page': page,
          'name': name,
        },
      );

      if (response.statusCode == 200) {
        final List<CharactersModel> characters = parseData(response.data);
        return characters;
      } else {
        throw Exception('Failed to load characters');
      }
    } catch (e) {
      throw Exception('Failed to fetch characters: $e');
    }
  }

  List<CharactersModel> parseData(responseBody) {
    final List<dynamic> jsonList = responseBody['results'];
    return jsonList.map((json) => CharactersModel.fromJson(json)).toList();
  }

  InfoModel parseInfoData(responseBody) {
    final Map<String, dynamic> jsonInfo = responseBody['info'];
    return InfoModel.fromJson(jsonInfo);
  }
}
