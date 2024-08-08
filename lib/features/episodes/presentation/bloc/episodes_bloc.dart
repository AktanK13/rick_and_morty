import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rick_and_morty/features/episodes/domain/entities/episodes_entity.dart';
import 'package:rick_and_morty/features/episodes/domain/usecases/episodes_usecase.dart';

part 'episodes_event.dart';
part 'episodes_state.dart';

class EpisodesBloc extends Bloc<EpisodesEvent, EpisodesState> {
  final EpisodesUsecase usecase;
  EpisodesBloc({required this.usecase}) : super(EpisodesInitial()) {
    on<FetchEpisodes>(_onFetchEpisodes);
  }

  void _onFetchEpisodes(
      FetchEpisodes event, Emitter<EpisodesState> emit) async {
    emit(EpisodesLoading());
    final result = await usecase.getEpisodes(event.page);
    result.fold(
      (error) => emit(EpisodesError(error)),
      (episodes) => emit(EpisodesLoadSuccess(episodes)),
    );
  }
}
