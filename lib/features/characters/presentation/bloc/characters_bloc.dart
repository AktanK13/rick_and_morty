import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/domain/usecases/use_cases.dart';

part 'characters_event.dart';
part 'characters_state.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  final CharactersUseCases useCases;
  CharactersBloc({required this.useCases}) : super(CharactersInitial()) {
    on<FetchCharacters>(_onFetchCharacters);
    on<SearchCharacters>(_onSearchCharacters);
  }

  void _onFetchCharacters(
      FetchCharacters event, Emitter<CharactersState> emit) async {
    emit(CharactersLoading());
    final result = await useCases.getCharacters(event.page);
    result.fold(
      (error) => emit(CharactersError(error)),
      (characters) {
        emit(CharactersLoadSuccess(characters));
      },
    );
  }
  void _onSearchCharacters(
      SearchCharacters event, Emitter<CharactersState> emit) async {
    emit(CharactersLoading());
    final result = await useCases.searchCharacters(event.page, event.name);
    result.fold(
      (error) => emit(CharactersError(error)),
      (characters) {
        emit(SearchCharactersLoadSuccess(characters));
      },
    );
  }
}
