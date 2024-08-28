import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/features/episodes/domain/entities/episodes_entity.dart';
import 'package:rick_and_morty/features/episodes/domain/usecases/episodes_usecase.dart';

part 'episodes_bloc.freezed.dart';

part 'episodes_event.dart';
part 'episodes_state.dart';

class EpisodesBloc extends Bloc<EpisodesEvent, EpisodesState> {
  EpisodesBloc({required this.usecase}) : super(const EpisodesState.initial()) {
    _scrollController.addListener(_onScroll);
    on<FetchEpisodes>(_onFetchEpisodes);
  }

  final ScrollController _scrollController = ScrollController();
  final EpisodesUsecase usecase;
  int currentPage = 1;
  bool hasReachedMax = false;
  List<EpisodesEntity> allEpisode = [];

  void _onFetchEpisodes(
      FetchEpisodes event, Emitter<EpisodesState> emit) async {
    if (hasReachedMax) return;
    if (state is _EpisodesInitialState) {
      emit(const EpisodesState.loading());
    }
    final result = await usecase.getEpisodes(currentPage);
    result.fold(
      (error) => emit(EpisodesState.error(error)),
      (data) {
        hasReachedMax = data.info.pages == currentPage;
        if (currentPage <= data.info.pages) {
          allEpisode.addAll(data.episodeEntity);
          currentPage++;
          emit(
            EpisodesState.loaded(
              episodes: List.from(allEpisode),
              hasReachedMax: hasReachedMax,
            ),
          );
        }
      },
    );
  }

  @override
  void onTransition(Transition<EpisodesEvent, EpisodesState> transition) {
    super.onTransition(transition);
    log('data-unique: transition: $transition ');
  }

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
