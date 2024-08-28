import 'package:dio/dio.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/utils/injections.dart';
import 'package:rick_and_morty/features/characters/data/models/characters_model.dart';

class CharactersRemoteDataSource {
  CharactersRemoteDataSource();
  final client = getIt<Dio>();
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
      return CharactersModel.fromJson(response.data);
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
      return CharactersModel.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to fetch characters: $e');
    }
  }
}
