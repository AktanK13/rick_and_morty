import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/domain/usecases/use_cases.dart';

part 'characters_event.dart';
part 'characters_state.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  final CharactersUseCases useCases;
  bool _hasReachedMax = false;
  int currentPage = 1;
  bool hasReachedMax = false;
  List<CharactersEntity> allCharacters = [];


  CharactersBloc({required this.useCases}) : super(CharactersInitial()) {
    on<FetchCharacters>(_onFetchCharacters);
    // on<SearchCharacters>(_onSearchCharacters);
  }

  void _onFetchCharacters(
      FetchCharacters event, Emitter<CharactersState> emit) async {
    if (hasReachedMax) return;
    if (state is CharactersInitial) {
      emit(CharactersLoading());
    }
    final result =
        await useCases.getCharacters(currentPage, event.status, event.gender);
    result.fold(
      (error) => emit(CharactersError(error)),
      (data) {
        _hasReachedMax = data.info.pages == currentPage;
        if (currentPage <= data.info.pages) {
          allCharacters.addAll(data.charactersEntity);
          currentPage++;
          emit(
            CharactersLoadSuccess(
              List.from(allCharacters),
              count: data.info.count,
              hasReachedMax: _hasReachedMax,
            ),
          );
        }
      },
    );
  }

  // void _onSearchCharacters(
  //     SearchCharacters event, Emitter<CharactersState> emit) async {
  //   if (!event.isLoadMore) {
  //     _hasReachedMaxSearch = false;
  //     emit(SearchCharactersLoading());
  //   }
  //   if (_hasReachedMaxSearch) return;

  //   final result = await useCases.searchCharacters(event.page, event.name);
  //   result.fold(
  //     (error) => emit(SearchCharactersError(error)),
  //     (characters) {
  //       if (pageNumber <= totalPage) {
  //         /// -
  //         // success
  //         pageNumber++;
  //       }
  //       _hasReachedMaxSearch = characters.isEmpty;
  //       log('data-unique: event.isLoadMore: ${event.isLoadMore} ');
  //       useCases.charactersT.addAll(characters);
  //       if (event.isLoadMore) {
  //         emit(SearchCharactersLoadSuccess(
  //           useCases.charactersT,
  //           hasReachedMax: _hasReachedMaxSearch,
  //         ));
  //       } else {
  //         emit(
  //           SearchCharactersLoadSuccess(
  //             useCases.charactersT,
  //             hasReachedMax: _hasReachedMaxSearch,
  //           ),
  //         );
  //       }
  //     },
  //   );
  // }
}
