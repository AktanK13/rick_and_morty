part of 'characters_bloc.dart';

@freezed
class CharactersEvent with _$CharactersEvent {
  const factory CharactersEvent.fetch({
    required FilterStatus status,
    required FilterGender gender,
  }) = FetchCharacters;
  const factory CharactersEvent.search({
    required String name,
  }) = SearchCharacters;
  const factory CharactersEvent.toggleGridView() = ToggleGridView;
  const factory CharactersEvent.toggleStatusFilter(
      {required FilterStatus filterStatus}) = ToggleStatusFilter;
  const factory CharactersEvent.toggleGenderFilter(
      {required FilterGender filterGender}) = ToggleGenderFilter;
}
