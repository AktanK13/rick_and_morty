part of 'characters_bloc.dart';

abstract class CharactersEvent extends Equatable {
  const CharactersEvent();

  @override
  List<Object> get props => [];
}

class FetchCharacters extends CharactersEvent {
  final int page;

  const FetchCharacters({required this.page});

  @override
  List<Object> get props => [page];
}