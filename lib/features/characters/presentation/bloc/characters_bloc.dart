import 'dart:developer';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/domain/usecases/use_cases.dart';

part 'characters_bloc.freezed.dart';
part 'characters_event.dart';
part 'characters_state.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  final ScrollController _scrollController = ScrollController();
  final ScrollController _searchScrollController = ScrollController();
  final TextEditingController _textFieldController = TextEditingController();

  final CharactersUseCases useCases;
  int totalCount = 0;
  String query = '';

  int currentPage = 1;
  int searchCurrentPage = 1;

  bool hasReachedMax = false;
  bool hasReachedMaxSearch = false;

  String selectedStatus = '';
  String selectedGender = '';

  List<CharactersEntity> allCharacters = [];
  List<CharactersEntity> allSearchCharacters = [];

  CharactersBloc({required this.useCases})
      : super(const CharactersState.initial()) {
    _scrollController.addListener(_onScroll);
    _searchScrollController.addListener(_onScrollSearch);
    on<FetchCharacters>(_onFetchCharacters);
    on<SearchCharacters>(_onSearchCharacters);
  }

  void _onFetchCharacters(
      FetchCharacters event, Emitter<CharactersState> emit) async {
    if (hasReachedMax) return;
    if (state is _CharactersInitial || state is _CharactersLoading) {
      emit(const _CharactersLoading());
    }
    if (selectedStatus != event.status || selectedGender != event.gender) {
      allCharacters.clear();
      currentPage = 1;
      selectedStatus = event.status;
      selectedGender = event.gender;
    _scrollController.jumpTo(0);

    }
    final result = await useCases.getCharacters(
        currentPage, selectedStatus, selectedGender);
    result.fold(
      (error) => emit(_CharactersError(error)),
      (data) {
        hasReachedMax = data.info.pages == currentPage;
        final characterEntity = data.mapToEntity();
        if (currentPage <= data.info.pages) {
          allCharacters.addAll(characterEntity);
          currentPage++;
          emit(
            _CharactersLoadSuccess(
              characters: List.from(allCharacters),
              count: data.info.count,
              hasReachedMax: hasReachedMax,
            ),
          );
        }
      },
    );
  }

  void _onSearchCharacters(
      SearchCharacters event, Emitter<CharactersState> emit) async {
    if (hasReachedMaxSearch && query == event.name) return;
    if (event.name == "") {
      emit(const _SearchCharactersError("isEmpty"));
      allSearchCharacters.clear();
      searchCurrentPage = 1;
      query = '';
      return;
    } else if (query != event.name) {
      emit(const _SearchCharactersLoading());
      allSearchCharacters.clear();
      searchCurrentPage = 1;
      query = event.name;
    }
    final result = await useCases.searchCharacters(searchCurrentPage, query);

    result.fold(
      (error) {
        emit(_SearchCharactersError(error));
      },
      (data) {
        hasReachedMaxSearch = data.info.pages == searchCurrentPage;
        final characterEntity = data.mapToEntity();

        if (searchCurrentPage <= data.info.pages) {
          allSearchCharacters.addAll(characterEntity);
          searchCurrentPage++;
          emit(
            _SearchCharactersLoadSuccess(
              characters: List.from(allSearchCharacters),
              hasReachedMax: hasReachedMaxSearch,
            ),
          );
        }
      },
    );
  }

  @override
  void onTransition(Transition<CharactersEvent, CharactersState> transition) {
    super.onTransition(transition);
    log('data-unique: transition: $transition ');
  }

  @override
  Future<void> close() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    _searchScrollController
      ..removeListener(_onScroll)
      ..dispose();
    _textFieldController.dispose();
    return super.close();
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent &&
        !hasReachedMax) {
      add(FetchCharacters(status: selectedStatus, gender: selectedGender));
    }
  }

  void _onScrollSearch() {
    if (_searchScrollController.position.pixels ==
            _searchScrollController.position.maxScrollExtent &&
        !hasReachedMaxSearch) {
      add(SearchCharacters(name: query));
    }
  }

  Future<void> refreshPage() async {
    add(const FetchCharacters(status: '', gender: ''));
  }

  ScrollController get scrollController => _scrollController;
  ScrollController get searchScrollController => _searchScrollController;
  TextEditingController get textFieldController => _textFieldController;
}
