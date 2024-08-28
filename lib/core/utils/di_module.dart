import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/features/characters/data/datasources/characters_remote_data_source.dart';
import 'package:rick_and_morty/features/characters/data/repositories/characters_repository_impl.dart';
import 'package:rick_and_morty/features/characters/presentation/bloc/characters_bloc.dart';
import 'package:rick_and_morty/features/episodes/data/datasources/episodes_remote_data_source.dart';
import 'package:rick_and_morty/features/episodes/data/repositories/episodes_repository_impl.dart';
import 'package:rick_and_morty/features/episodes/domain/usecases/episodes_usecase.dart';
import 'package:rick_and_morty/features/episodes/presentation/bloc/episodes_bloc.dart';
import 'package:rick_and_morty/features/locations/data/datasources/locations_remote_data_source.dart';
import 'package:rick_and_morty/features/locations/domain/repositories/locations_repository.dart';
import 'package:rick_and_morty/features/locations/presentation/bloc/locations_bloc.dart';

import '../../features/characters/domain/repositories/characters_repository.dart';
import '../../features/characters/domain/usecases/use_cases.dart';
import '../../features/episodes/domain/repositories/episodes_repository.dart';
import '../../features/locations/data/repositories/locations_repository_impl.dart';
import '../../features/locations/domain/usecases/use_cases.dart';

@module
abstract class RegisterModule {
  // Регистрация Dio как singleton
  @lazySingleton
  Dio get dio => Dio();

  // Регистрация remote data sources
  @lazySingleton
  CharactersRemoteDataSource get charactersRemoteDataSource =>
      CharactersRemoteDataSource();

  @lazySingleton
  LocationsRemoteDataSource get locationsRemoteDataSource =>
      LocationsRemoteDataSource();

  @lazySingleton
  EpisodesRemoteDataSource get episodesRemoteDataSource =>
      EpisodesRemoteDataSource();

  // Регистрация репозиториев
  @lazySingleton
  CharactersRepository get charactersRepository =>
      CharactersRepositoryImpl(remoteDataSource: charactersRemoteDataSource);

  @lazySingleton
  LocationsRepository get locationsRepository =>
      LocationsRepositoryImpl(remoteDataSource: locationsRemoteDataSource);

  @lazySingleton
  EpisodesRepository get episodesRepository =>
      EpisodesRepositoryImpl(remoteDataSource: episodesRemoteDataSource);

  // Регистрация Use Cases
  @lazySingleton
  CharactersUseCases get charactersUseCases =>
      CharactersUseCases(repository: charactersRepository);

  @lazySingleton
  LocationsUseCases get locationsUseCases =>
      LocationsUseCases(repository: locationsRepository);

  @lazySingleton
  EpisodesUsecase get episodesUsecase =>
      EpisodesUsecase(repository: episodesRepository);

  // Регистрация BLoC
  @factory
  CharactersBloc get charactersBloc => CharactersBloc(useCases: charactersUseCases);

  @factory
  LocationsBloc get locationsBloc => LocationsBloc(usecase: locationsUseCases);

  @factory
  EpisodesBloc get episodesBloc => EpisodesBloc(usecase: episodesUsecase);
}
