part of 'locations_bloc.dart';

abstract class LocationsEvent extends Equatable {
  const LocationsEvent();

  @override
  List<Object> get props => [];
}

class FetchLocations extends LocationsEvent {
  const FetchLocations({required this.page});
  final int page;

  @override
  List<Object> get props => [page];
}
