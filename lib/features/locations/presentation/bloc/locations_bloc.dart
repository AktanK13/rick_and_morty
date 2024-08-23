import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/features/locations/domain/entities/location_entity.dart';
import 'package:rick_and_morty/features/locations/domain/usecases/use_cases.dart';

part 'locations_bloc.freezed.dart';

part 'locations_event.dart';
part 'locations_state.dart';

class LocationsBloc extends Bloc<LocationsEvent, LocationsState> {
  final ScrollController _scrollController = ScrollController();
  final LocationsUseCases usecase;
  int currentPage = 1;
  bool hasReachedMax = false;
  List<LocationsEntity> allLocation = [];

  LocationsBloc({required this.usecase})
      : super(const LocationsState.initial()) {
    _scrollController.addListener(_onScroll);
    on<FetchLocations>(_onFetchLocations);
  }

  void _onFetchLocations(
      FetchLocations event, Emitter<LocationsState> emit) async {
    if (hasReachedMax) return;
    if (state is _LocationsInitialState) {
      emit(const _LocationsLoadingState());
    }
    final result = await usecase.getLocations(currentPage);
    result.fold(
      (error) => emit(_LocationsErrorState(error)),
      (data) {
        hasReachedMax = data.info.pages == currentPage;
        final locationsEntity = data.mapToEntity();
        if (currentPage <= data.info.pages) {
          allLocation.addAll(locationsEntity);
          currentPage++;
          emit(_LocationsLoadedSuccess(
              hasReachedMax: hasReachedMax, locations: List.from(allLocation)));
        }
      },
    );
  }

  // @override
  // void onTransition(Transition<LocationsEvent, LocationsState> transition) {
  //   super.onTransition(transition);
  //   log('data-unique: transition: $transition ');
  // }

  @override
  Future<void> close() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    return super.close();
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent &&
        !hasReachedMax) {
      add(const FetchLocations());
    }
  }

  Future<void> refreshPage() async {
    add(const FetchLocations());
  }

  ScrollController get scrollController => _scrollController;
}
