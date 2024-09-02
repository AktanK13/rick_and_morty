import 'package:flutter/material.dart';
import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/domain/entities/main_entity.dart';
import 'package:rick_and_morty/features/characters/domain/repositories/characters_repository.dart';

class CharactersUseCases {
  CharactersUseCases({required this.repository})
      : textFieldController = TextEditingController();

  final CharactersRepository repository;
  final Pagination pagination = Pagination();
  final SearchPagination searchPagination = SearchPagination();
  final ViewState viewState = ViewState();
  final TextEditingController textFieldController;

  Future<Either<String, MainEntity>> getCharacters() async {
    final result = await repository.getCharacters(
      pagination.currentPage,
      pagination.selectedStatus,
      pagination.selectedGender,
    );

    return result.map((data) {
      pagination.updatePagination(data);
      return data;
    });
  }

  Future<Either<String, MainEntity>> searchCharacters(
      {required String query}) async {
    searchPagination.query = query;
    final result = await repository.searchCharacters(
      searchPagination.searchCurrentPage,
      searchPagination.query,
    );

    return result.map((data) {
      searchPagination.updatePagination(data);
      return data;
    });
  }

  void toggleView() {
    viewState.isGridView = !viewState.isGridView;
  }

  void dispose() {
    pagination.dispose();
    searchPagination.dispose();
    textFieldController.dispose();
  }
}

class Pagination {
  int currentPage = 1;
  bool hasReachedMax = false;
  String selectedStatus = '';
  String selectedGender = '';
  List<CharactersEntity> allCharacters = [];
  final ScrollController scrollController = ScrollController();

  void updatePagination(MainEntity data) {
    hasReachedMax = data.info.pages == currentPage;
    if (currentPage <= data.info.pages) {
      allCharacters.addAll(data.charactersEntity);
      currentPage++;
    }
  }

  void reset({required String status, required String gender}) {
    currentPage = 1;
    hasReachedMax = false;
    selectedStatus = status;
    selectedGender = gender;
    allCharacters.clear();
  }

  void dispose() {
    scrollController.dispose();
  }
}

class SearchPagination {
  int searchCurrentPage = 1;
  bool hasReachedMaxSearch = false;
  String query = '';
  List<CharactersEntity> allSearchCharacters = [];
  final ScrollController scrollController = ScrollController();

  void updatePagination(MainEntity data) {
    hasReachedMaxSearch = data.info.pages == searchCurrentPage;
    if (searchCurrentPage <= data.info.pages) {
      allSearchCharacters.addAll(data.charactersEntity);
      searchCurrentPage++;
    }
  }

  void reset({required String query}) {
    searchCurrentPage = 1;
    hasReachedMaxSearch = false;
    query = query;
    allSearchCharacters.clear();
  }

  void dispose() {
    scrollController.dispose();
  }
}

class ViewState {
  bool isGridView = false;
}
