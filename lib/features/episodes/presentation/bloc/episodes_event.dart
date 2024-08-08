part of 'episodes_bloc.dart';

abstract class EpisodesEvent extends Equatable {
  const EpisodesEvent();

  @override
  List<Object> get props => [];
}


class FetchEpisodes extends EpisodesEvent {
  const FetchEpisodes({required this.page});

  final int page;

  @override
  List<Object> get props => [page];
}