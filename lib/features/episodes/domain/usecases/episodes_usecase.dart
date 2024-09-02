import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/features/episodes/domain/entities/episodes_entity.dart';
import 'package:rick_and_morty/features/episodes/domain/entities/main_entity.dart';
import 'package:rick_and_morty/features/episodes/domain/repositories/episodes_repository.dart';

class EpisodesUsecase {
  EpisodesUsecase({required this.repository});

  final EpisodesRepository repository;
  final Pagination pagination = Pagination();

  Future<Either<String, MainEntity>> getEpisodes() async {
    final result = await repository.getEpisodes(pagination.currentPage);

    return result.map((data) {
      pagination.updatePagination(data);
      return data;
    });
  }
}

class Pagination {
  int currentPage = 1;
  bool hasReachedMax = false;
  List<EpisodesEntity> allEpisodes = [];
  final ScrollController scrollController = ScrollController();

  void updatePagination(MainEntity data) {
    hasReachedMax = data.info.pages == currentPage;
    if (currentPage <= data.info.pages) {
      allEpisodes.addAll(data.episodeEntity);
      currentPage++;
    }
  }

  void reset({required String status, required String gender}) {
    currentPage = 1;
    hasReachedMax = false;
    allEpisodes.clear();
  }

  void dispose() {
    scrollController.dispose();
  }
}
