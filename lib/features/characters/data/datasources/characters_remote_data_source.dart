import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/features/characters/data/models/characters_model.dart';
import 'package:rick_and_morty/features/characters/data/models/info_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CharactersRemoteDataSource {
  final Dio client;
  CharactersRemoteDataSource({required this.client});

  Future<List<CharactersModel>> fetchCharacters(int page) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      final response = await client.get(
        AppConsts.charactersUrl,
        queryParameters: {
          'page': page,
        },
      );

      if (response.statusCode == 200) {
        final List<CharactersModel> characters = parseData(response.data);
        final InfoModel info = parseInfoData(response.data);
        await prefs.setInt(AppConsts.count, info.count ?? 0);

        return characters;
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
      log('data-unique: 1 ');
      final response = await client.get(
        AppConsts.charactersUrl,
        queryParameters: {
          'page': page,
          'name': name,
        },
      );

      if (response.statusCode == 200) {
        final List<CharactersModel> characters = parseData(response.data);
        // log('data-unique: characters: ${characters} ');
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
    // log('data-unique: jsonInfo: ${jsonInfo} ');
    return InfoModel.fromJson(jsonInfo);
  }
}
