part of 'locations_bloc.dart';

@freezed
class LocationsState with _$LocationsState {
  const factory LocationsState.initial() = _LocationsInitialState;
  const factory LocationsState.loading() = _LocationsLoadingState;
  const factory LocationsState.error(String message) = _LocationsErrorState;
  const factory LocationsState.loaded({required List<LocationEntity> locations, @Default(false) bool hasReachedMax}) = _LocationsLoadedSuccess;
}
