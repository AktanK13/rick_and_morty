import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/features/locations/domain/entities/location_entity.dart';
import 'package:rick_and_morty/features/locations/domain/usecases/use_cases.dart';

part 'locations_bloc.freezed.dart';

part 'locations_event.dart';
part 'locations_state.dart';

class LocationsBloc extends Bloc<LocationsEvent, LocationsState> {
  LocationsBloc({required this.usecase})
      : super(const LocationsState.initial()) {
    usecase.pagination.scrollController.addListener(_onScroll);
    on<FetchLocations>(_onFetchLocations);
  }

  final LocationsUseCases usecase;

  void _onFetchLocations(
      FetchLocations event, Emitter<LocationsState> emit) async {
    if (usecase.pagination.hasReachedMax) return;
    if (state is _LocationsInitialState) {
      emit(const LocationsState.loading());
    }
    final result = await usecase.getLocations();
    result.fold(
      (error) => emit(LocationsState.error(error)),
      (data) {
        emit(
          LocationsState.loaded(
            hasReachedMax: usecase.pagination.hasReachedMax,
            locations: List.from(usecase.pagination.allLocations),
          ),
        );
      },
    );
  }

  @override
  void onTransition(Transition<LocationsEvent, LocationsState> transition) {
    super.onTransition(transition);
    log('data-unique: transition: $transition ');
  }

  @override
  Future<void> close() {
    usecase.pagination.dispose();
    return super.close();
  }

  void _onScroll() {
    if (usecase.pagination.scrollController.position.pixels ==
            usecase.pagination.scrollController.position.maxScrollExtent &&
        !usecase.pagination.hasReachedMax) {
      add(const FetchLocations());
    }
  }

  Future<void> refreshPage() async {
    add(const FetchLocations());
  }
}
