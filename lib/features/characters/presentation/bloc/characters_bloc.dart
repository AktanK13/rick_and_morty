import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/domain/usecases/use_cases.dart';

part 'characters_event.dart';
part 'characters_state.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  final CharactersUseCases useCases;
  int currentPage = 1;
  int searchCurrentPage = 1;
  bool hasReachedMax = false;
  bool hasReachedMaxSearch = false;
  int totalCount = 0;
  String query = '';
  String selectedStatus = '';
  String selectedGnder = '';
  List<CharactersEntity> allCharacters = [];
  List<CharactersEntity> allSearchCharacters = [];

  CharactersBloc({required this.useCases}) : super(CharactersInitial()) {
    on<FetchCharacters>(_onFetchCharacters);
    on<SearchCharacters>(_onSearchCharacters);
  }

  void _onFetchCharacters(
      FetchCharacters event, Emitter<CharactersState> emit) async {
    if (hasReachedMax) return;
    if (state is CharactersInitial) {
      emit(CharactersLoading());
    }
    if (selectedStatus != event.status || selectedGnder != event.gender) {
      allCharacters.clear();
      currentPage = 1;
      selectedStatus = event.status;
      selectedGnder = event.gender;
    }
    final result = await useCases.getCharacters(
        currentPage, selectedStatus, selectedGnder);
    result.fold(
      (error) => emit(CharactersError(error)),
      (data) {
        hasReachedMax = data.info.pages == currentPage;
        totalCount = data.info.count;
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
}
