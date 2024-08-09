part of 'characters_bloc.dart';

abstract class CharactersEvent extends Equatable {
  const CharactersEvent();

  @override
  List<Object> get props => [];
}

class FetchCharacters extends CharactersEvent {
  const FetchCharacters({required this.page});
  final int page;


  @override
  List<Object> get props => [page];
}

class SearchCharacters extends CharactersEvent {
  const SearchCharacters(this.name, {required this.page});
  final int page;
  final String name;


  @override
  List<Object> get props => [page , name];
}