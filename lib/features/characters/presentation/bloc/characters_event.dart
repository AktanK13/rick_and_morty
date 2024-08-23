part of 'characters_bloc.dart';

@freezed
class CharactersEvent with _$CharactersEvent {
  const factory CharactersEvent.fetch({
    required String status,
    required String gender,
  }) = FetchCharacters;
  const factory CharactersEvent.search({
    required String name,
  }) = SearchCharacters;
}
