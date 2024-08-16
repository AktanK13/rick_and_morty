import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rick_and_morty/features/locations/domain/entities/location_entity.dart';
import 'package:rick_and_morty/features/locations/domain/usecases/use_cases.dart';

part 'locations_event.dart';
part 'locations_state.dart';

class LocationsBloc extends Bloc<LocationsEvent, LocationsState> {
  final LocationsUseCases usecase;
  int currentPage = 1;
  bool hasReachedMax = false;
  List<LocationsEntity> allLocation = [];

  LocationsBloc({required this.usecase}) : super(LocationsInitial()) {
    on<FetchLocations>(_onFetchLocations);
  }

  void _onFetchLocations(
      FetchLocations event, Emitter<LocationsState> emit) async {
    if (hasReachedMax) return;
    if (state is LocationsInitial) {
      emit(LocationsLoading());
    }
    final result = await usecase.getLocations(currentPage);
    result.fold(
      (error) => emit(LocationsError(error)),
      (data) {
        hasReachedMax = data.info.pages == currentPage;
        if (currentPage <= data.info.pages) {
          allLocation.addAll(data.locationsEntity);
          currentPage++;
          emit(LocationsLoadedSuccess(List.from(allLocation), hasReachedMax));
        }
      },
    );
  }
}
