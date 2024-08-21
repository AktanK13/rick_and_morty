import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/domain/usecases/use_cases.dart';

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

  CharactersBloc({required this.useCases}) : super(CharactersInitial()) {
    _scrollController.addListener(_onScroll);
    _searchScrollController.addListener(_onScrollSearch);
    on<FetchCharacters>(_onFetchCharacters);
    on<SearchCharacters>(_onSearchCharacters);
  }

  void _onFetchCharacters(
      FetchCharacters event, Emitter<CharactersState> emit) async {
    if (hasReachedMax) return;
    if (state is CharactersInitial) {
      emit(CharactersLoading());
    }
    if (selectedStatus != event.status || selectedGender != event.gender) {
      allCharacters.clear();
      currentPage = 1;
      selectedStatus = event.status;
      selectedGender = event.gender;
    }
    log('data-unique: selectedStatus: ${selectedStatus} ');
    log('data-unique: selectedGender: ${selectedGender} ');
    final result = await useCases.getCharacters(
        currentPage, selectedStatus, selectedGender);
    result.fold(
      (error) => emit(CharactersError(error)),
      (data) {
        hasReachedMax = data.info.pages == currentPage;
        if (currentPage <= data.info.pages) {
          allCharacters.addAll(data.charactersEntity);
          currentPage++;
          emit(
            CharactersLoadSuccess(
              List.from(allCharacters),
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
      emit(const SearchCharactersError("isEmpty"));
      allSearchCharacters.clear();
      searchCurrentPage = 1;
      query = '';
      return;
    } else if (query != event.name) {
      emit(SearchCharactersLoading());
      allSearchCharacters.clear();
      searchCurrentPage = 1;
      query = event.name;
    }
    final result = await useCases.searchCharacters(searchCurrentPage, query);

    result.fold(
      (error) {
        emit(SearchCharactersError(error));
      },
      (data) {
        hasReachedMaxSearch = data.info.pages == searchCurrentPage;
        if (searchCurrentPage <= data.info.pages) {
          allSearchCharacters.addAll(data.charactersEntity);
          searchCurrentPage++;
          emit(
            SearchCharactersLoadSuccess(
              List.from(allSearchCharacters),
              hasReachedMax: hasReachedMaxSearch,
            ),
          );
        }
      },
    );
  }

  // @override
  // void onTransition(Transition<CharactersEvent, CharactersState> transition) {
  //   super.onTransition(transition);
  //   log('data-unique: transition: ${transition} ');
  // }

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
