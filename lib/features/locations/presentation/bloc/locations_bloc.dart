import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rick_and_morty/features/locations/domain/entities/location_entity.dart';
import 'package:rick_and_morty/features/locations/domain/usecases/use_cases.dart';

part 'locations_event.dart';
part 'locations_state.dart';

class LocationsBloc extends Bloc<LocationsEvent, LocationsState> {
  final LocationsUseCases usecase;
  LocationsBloc({required this.usecase}) : super(LocationsInitial()) {
    on<FetchLocations>(_onFetchLocations);
  }

  void _onFetchLocations(
      FetchLocations event, Emitter<LocationsState> emit) async {
    emit(LocationsLoading());
    final result = await usecase.getLocations(event.page);
    result.fold(
      (error) => emit(LocationsError(error)),
      (characters) {
        emit(LocationsLoadedSuccess(characters));
      },
    );
  }
}
