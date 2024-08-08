part of 'locations_bloc.dart';

abstract class LocationsState extends Equatable {
  const LocationsState();

  @override
  List<Object> get props => [];
}

class LocationsInitial extends LocationsState {}

class LocationsLoading extends LocationsState {}

class LocationsLoadedSuccess extends LocationsState {
  final List<LocationsEntity> locations;
  const LocationsLoadedSuccess(this.locations);
    @override
  List<Object> get props => [locations];
}

class LocationsError extends LocationsState {
  const LocationsError(this.message);
  
  final String message;

  @override
  List<Object> get props => [message];

}