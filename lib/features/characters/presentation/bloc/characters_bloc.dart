import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/domain/usecases/use_cases.dart';

part 'characters_bloc.freezed.dart';
part 'characters_event.dart';
part 'characters_state.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  CharactersBloc({required this.useCases})
      : super(const CharactersState.initial()) {
    useCases.pagination.scrollController.addListener(_onScroll);
    useCases.searchPagination.scrollController.addListener(_onScrollSearch);
    on<FetchCharacters>(_onFetchCharacters);
    on<SearchCharacters>(_onSearchCharacters);
    on<ToggleGridView>(_onToggleView);
  }

  final CharactersUseCases useCases;

  void _onFetchCharacters(
      FetchCharacters event, Emitter<CharactersState> emit) async {
    if (useCases.pagination.hasReachedMax) return;

    if (state is _CharactersInitial) {
      emit(const CharactersState.loading());
    }

    if (useCases.pagination.selectedStatus != event.status ||
        useCases.pagination.selectedGender != event.gender) {
      useCases.pagination.reset(status: event.status, gender: event.gender);
      useCases.pagination.scrollController.jumpTo(0);
    }

    final result = await useCases.getCharacters();
    result.fold(
      (error) => emit(CharactersState.error(error)),
      (data) {
        emit(
          CharactersState.loaded(
            characters: List.from(useCases.pagination.allCharacters),
            count: data.info.count,
            hasReachedMax: useCases.pagination.hasReachedMax,
            isGridView: useCases.viewState.isGridView,
          ),
        );
      },
    );
  }

  void _onSearchCharacters(
      SearchCharacters event, Emitter<CharactersState> emit) async {
    if (useCases.searchPagination.hasReachedMaxSearch &&
        useCases.searchPagination.query == event.name) return;

    if (event.name.isEmpty) {
      emit(const _SearchCharactersError(""));
      useCases.searchPagination.reset(query: '');
      return;
    }

    if (useCases.searchPagination.query != event.name) {
      emit(const CharactersState.searchLoading());
      useCases.searchPagination.query == event.name;
    }

    final result = await useCases.searchCharacters(query: event.name);
    result.fold(
      (error) => emit(CharactersState.searchError(error)),
      (data) {
        emit(
          CharactersState.searchLoaded(
            characters:
                List.from(useCases.searchPagination.allSearchCharacters),
            hasReachedMax: useCases.searchPagination.hasReachedMaxSearch,
          ),
        );
      },
    );
  }

  void _onToggleView(ToggleGridView event, Emitter<CharactersState> emit) {
    useCases.toggleView();
    emit(
      CharactersState.loaded(
        characters: List.from(useCases.pagination.allCharacters),
        count: useCases.pagination.allCharacters.length,
        hasReachedMax: useCases.pagination.hasReachedMax,
        isGridView: useCases.viewState.isGridView,
      ),
    );
  }

  // @override
  // void onTransition(Transition<CharactersEvent, CharactersState> transition) {
  //   super.onTransition(transition);
  //   log('data-unique: transition: ${transition} ');
  // }

  void _onScroll() {
    if (useCases.pagination.scrollController.position.pixels ==
            useCases.pagination.scrollController.position.maxScrollExtent &&
        !useCases.pagination.hasReachedMax) {
      add(FetchCharacters(
        status: useCases.pagination.selectedStatus,
        gender: useCases.pagination.selectedGender,
      ));
    }
  }

  void _onScrollSearch() {
    if (useCases.searchPagination.scrollController.position.pixels ==
            useCases
                .searchPagination.scrollController.position.maxScrollExtent &&
        !useCases.searchPagination.hasReachedMaxSearch) {
      add(SearchCharacters(name: useCases.searchPagination.query));
    }
  }

  Future<void> refreshPage() async {
    add(const FetchCharacters(status: '', gender: ''));
  }

  @override
  Future<void> close() {
    useCases.dispose();
    return super.close();
  }
}
