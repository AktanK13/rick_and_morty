part of 'episodes_bloc.dart';

abstract class EpisodesState extends Equatable {
  const EpisodesState();  

  @override
  List<Object> get props => [];
}
class EpisodesInitial extends EpisodesState {}

class EpisodesLoading extends EpisodesState {}

class EpisodesLoadSuccess extends EpisodesState {
  const EpisodesLoadSuccess(this.episodes);

  final List<EpisodesEntity> episodes;

  @override
  List<Object> get props => [episodes];
}

class EpisodesError extends EpisodesState {
  const EpisodesError(this.message);
  
  final String message;


  @override
  List<Object> get props => [message];
}