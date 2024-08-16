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
  final bool hasReachedMax;
  final int count;

  const CharactersLoadSuccess(
    this.characters, {
    this.hasReachedMax = false,
    required this.count,
  });
  @override
  List<Object> get props => [characters, hasReachedMax];
}

class CharactersError extends CharactersState {
  final String message;

  const CharactersError(this.message);

  @override
  List<Object> get props => [message];
}

class SearchCharactersLoading extends CharactersState {}

class SearchCharactersLoadSuccess extends CharactersState {
  final List<CharactersEntity> characters;
  final bool hasReachedMax;

  const SearchCharactersLoadSuccess(this.characters,
      {this.hasReachedMax = false});

  @override
  List<Object> get props => [characters, hasReachedMax];
}

class SearchCharactersError extends CharactersState {
  final String message;

  const SearchCharactersError(this.message);

  @override
  List<Object> get props => [message];
}
