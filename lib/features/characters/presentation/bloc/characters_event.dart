part of 'characters_bloc.dart';

abstract class CharactersEvent extends Equatable {
  const CharactersEvent();

  @override
  List<Object> get props => [];
}

class FetchCharacters extends CharactersEvent {
  const FetchCharacters({
    required this.status,
    required this.gender,
  });
  final String status;
  final String gender;
  @override
  List<Object> get props => [];
}

class SearchCharacters extends CharactersEvent {
  const SearchCharacters({
    required this.name,
  });
  final String name;

  @override
  List<Object> get props => [name];
}
