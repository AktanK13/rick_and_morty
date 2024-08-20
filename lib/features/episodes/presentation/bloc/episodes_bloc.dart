import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/features/episodes/domain/entities/episodes_entity.dart';
import 'package:rick_and_morty/features/episodes/domain/usecases/episodes_usecase.dart';

part 'episodes_event.dart';
part 'episodes_state.dart';

class EpisodesBloc extends Bloc<EpisodesEvent, EpisodesState> {
  final ScrollController _scrollController = ScrollController();
  final EpisodesUsecase usecase;
  int currentPage = 1;
  bool hasReachedMax = false;
  List<EpisodesEntity> allEpisode = [];

  EpisodesBloc({required this.usecase}) : super(EpisodesInitial()) {
    _scrollController.addListener(_onScroll);
    on<FetchEpisodes>(_onFetchEpisodes);
  }

  void _onFetchEpisodes(
      FetchEpisodes event, Emitter<EpisodesState> emit) async {
    if (hasReachedMax) return;
    if (state is EpisodesInitial) {
      emit(EpisodesLoading());
    }
    final result = await usecase.getEpisodes(currentPage);
    result.fold(
      (error) => emit(EpisodesError(error)),
      (data) {
        hasReachedMax = data.info.pages == currentPage;
        if (currentPage <= data.info.pages) {
          allEpisode.addAll(data.episodeentity);
          currentPage++;
          emit(EpisodesLoadSuccess(List.from(allEpisode), hasReachedMax));
        }
      },
    );
  }

  // @override
  // void onTransition(Transition<LocationsEvent, LocationsState> transition) {
  //   super.onTransition(transition);
  //   log('data-unique: transition: ${transition} ');
  // }

  @override
  Future<void> close() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    return super.close();
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent &&
        !hasReachedMax) {
      add(const FetchEpisodes());
    }
  }

  Future<void> refreshPage() async {
    add(const FetchEpisodes());
  }

  ScrollController get scrollController => _scrollController;
}
