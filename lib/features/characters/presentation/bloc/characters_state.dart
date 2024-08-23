part of 'characters_bloc.dart';

@freezed
class CharactersState with _$CharactersState {
  const factory CharactersState.initial() = _CharactersInitial;

  const factory CharactersState.loading() = _CharactersLoading;
  const factory CharactersState.error(String message) = _CharactersError;
  const factory CharactersState.loaded(
      {required List<CharactersEntity> characters,
      @Default(false) bool hasReachedMax,
      @Default(0) int count}) = _CharactersLoadSuccess;

  const factory CharactersState.searchLoading() = _SearchCharactersLoading;
  const factory CharactersState.searchError(String message) = _SearchCharactersError;
  const factory CharactersState.searchLoaded(
      {required List<CharactersEntity> characters,
      @Default(false) bool hasReachedMax,}) = _SearchCharactersLoadSuccess;
}
