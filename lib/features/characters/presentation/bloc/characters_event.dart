part of 'characters_bloc.dart';

abstract class CharactersEvent extends Equatable {
  const CharactersEvent();

  @override
  List<Object> get props => [];
}

class FetchCharacters extends CharactersEvent {
  const FetchCharacters({
    required this.page,
    this.status,
    this.gender,
  });
  final int page;
  final String? status;
  final String? gender;

  @override
  List<Object> get props => [page];
}

class SearchCharacters extends CharactersEvent {
  const SearchCharacters({
    required this.page,
    required this.name,
  });
  final int page;
  final String name;

  @override
  List<Object> get props => [page, name];
}
