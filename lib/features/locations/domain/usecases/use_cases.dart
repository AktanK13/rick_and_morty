import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/features/locations/domain/entities/location_entity.dart';
import 'package:rick_and_morty/features/locations/domain/entities/main.entity.dart';
import 'package:rick_and_morty/features/locations/domain/repositories/locations_repository.dart';

class LocationsUseCases {
  LocationsUseCases({required this.repository});
  final LocationsRepository repository;
  final Pagination pagination = Pagination();

  Future<Either<String, MainEntity>> getLocations() async {
    final result = await repository.getLocations(pagination.currentPage);

    return result.map((data) {
      pagination.updatePagination(data);
      return data;
    });
  }
}

class Pagination {
  int currentPage = 1;
  bool hasReachedMax = false;
  List<LocationEntity> allLocations = [];
  final ScrollController scrollController = ScrollController();

  void updatePagination(MainEntity data) {
    hasReachedMax = data.info.pages == currentPage;
    if (currentPage <= data.info.pages) {
      allLocations.addAll(data.locationEntity);
      currentPage++;
    }
  }

  void reset({required String status, required String gender}) {
    currentPage = 1;
    hasReachedMax = false;
    allLocations.clear();
  }

  void dispose() {
    scrollController.dispose();
  }
}
