import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/features/episodes/domain/entities/episodes_entity.dart';
import 'package:rick_and_morty/features/episodes/domain/usecases/episodes_usecase.dart';

part 'episodes_bloc.freezed.dart';

part 'episodes_event.dart';
part 'episodes_state.dart';

class EpisodesBloc extends Bloc<EpisodesEvent, EpisodesState> {
  EpisodesBloc({required this.usecase}) : super(const EpisodesState.initial()) {
    usecase.pagination.scrollController.addListener(_onScroll);
    on<FetchEpisodes>(_onFetchEpisodes);
  }

  final EpisodesUsecase usecase;

  void _onFetchEpisodes(
      FetchEpisodes event, Emitter<EpisodesState> emit) async {
    if (usecase.pagination.hasReachedMax) return;
    if (state is _EpisodesInitialState) {
      emit(const EpisodesState.loading());
    }
    final result = await usecase.getEpisodes();
    result.fold(
      (error) => emit(EpisodesState.error(error)),
      (data) {
        emit(
          EpisodesState.loaded(
            episodes: List.from(usecase.pagination.allEpisodes),
            hasReachedMax: usecase.pagination.hasReachedMax,
          ),
        );
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
    usecase.pagination.dispose();
    return super.close();
  }

  void _onScroll() {
    if (usecase.pagination.scrollController.position.pixels ==
            usecase.pagination.scrollController.position.maxScrollExtent &&
        !usecase.pagination.hasReachedMax) {
      add(const FetchEpisodes());
    }
  }

  Future<void> refreshPage() async {
    add(const FetchEpisodes());
  }
}
