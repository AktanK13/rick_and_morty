part of 'episodes_bloc.dart';

abstract class EpisodesEvent extends Equatable {
  const EpisodesEvent();

  @override
  List<Object> get props => [];
}


class FetchEpisodes extends EpisodesEvent {
  const FetchEpisodes();


  @override
  List<Object> get props => [];
}