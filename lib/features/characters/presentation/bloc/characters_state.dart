part of 'characters_bloc.dart';

abstract class CharactersState extends Equatable {
  const CharactersState();

  @override
  List<Object> get props => [];
}

class CharactersInitial extends CharactersState {}

class CharactersLoading extends CharactersState {}

class CharactersLoadSuccess extends CharactersState {
  final List<CharactersEntity> characters;

  const CharactersLoadSuccess(this.characters);
  @override
  List<Object> get props => [characters];
}

class SearchCharactersLoadSuccess extends CharactersState {
  final List<CharactersEntity> characters;

  const SearchCharactersLoadSuccess(this.characters);

  @override
  List<Object> get props => [characters];
}

class CharactersError extends CharactersState {
  final String message;

  const CharactersError(this.message);

  @override
  List<Object> get props => [message];
}
