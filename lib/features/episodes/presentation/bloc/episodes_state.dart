part of 'episodes_bloc.dart';


@freezed
class EpisodesState with _$EpisodesState {
  const factory EpisodesState.initial() = _EpisodesInitialState;
  const factory EpisodesState.loading() = _EpisodesLoadingState;
  const factory EpisodesState.error(String message) = _EpisodesErrorState;
  const factory EpisodesState.loaded({required List<EpisodesEntity> episodes, @Default(false) bool hasReachedMax}) = _EpisodesLoadedSuccess;
}
