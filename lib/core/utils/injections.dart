import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:rick_and_morty/features/characters/data/datasources/characters_remote_data_source.dart';
import 'package:rick_and_morty/features/characters/data/repositories/characters_repository_impl.dart';
import 'package:rick_and_morty/features/characters/domain/usecases/use_cases.dart';
import 'package:rick_and_morty/features/characters/presentation/bloc/characters_bloc.dart';
import 'package:rick_and_morty/features/episodes/data/datasources/episodes_remote_data_source.dart';
import 'package:rick_and_morty/features/episodes/data/repositories/episodes_repository_impl.dart';
import 'package:rick_and_morty/features/episodes/domain/usecases/episodes_usecase.dart';
import 'package:rick_and_morty/features/episodes/presentation/bloc/episodes_bloc.dart';
import 'package:rick_and_morty/features/locations/data/datasources/locations_remote_data_source.dart';
import 'package:rick_and_morty/features/locations/data/repositories/locations_repository_impl.dart';
import 'package:rick_and_morty/features/locations/domain/usecases/use_cases.dart';
import 'package:rick_and_morty/features/locations/presentation/bloc/locations_bloc.dart';

final GetIt getIt = GetIt.instance;

void setup() async {
  // Регистрация клиента dio
  getIt.registerLazySingleton<Dio>(() => Dio());

  // Регистрация remote data source
  getIt.registerLazySingleton<CharactersRemoteDataSource>(
      () => CharactersRemoteDataSource(
            client: getIt<Dio>(),
          ));
  getIt.registerLazySingleton<LocationsRemoteDataSource>(
      () => LocationsRemoteDataSource(
            client: getIt<Dio>(),
          ));
  getIt.registerLazySingleton<EpisodesRemoteDataSource>(
      () => EpisodesRemoteDataSource(
            client: getIt<Dio>(),
          ));

  // // Регистрация repository
  getIt.registerLazySingleton<CharactersRepositoryImpl>(
      () => CharactersRepositoryImpl(
            remoteDataSource: getIt<CharactersRemoteDataSource>(),
          ));
  getIt.registerLazySingleton<LocationsRepositoryImpl>(
      () => LocationsRepositoryImpl(
            remoteDataSource: getIt<LocationsRemoteDataSource>(),
          ));
  getIt.registerLazySingleton<EpisodesRepositoryImpl>(
      () => EpisodesRepositoryImpl(
            remoteDataSource: getIt<EpisodesRemoteDataSource>(),
          ));

  // // Регистрация Use Cases
  getIt.registerLazySingleton<CharactersUseCases>(() => CharactersUseCases(
        repository: getIt<CharactersRepositoryImpl>(),
      ));
  getIt.registerLazySingleton<LocationsUseCases>(() => LocationsUseCases(
        repository: getIt<LocationsRepositoryImpl>(),
      ));
  getIt.registerLazySingleton<EpisodesUsecase>(() => EpisodesUsecase(
        repository: getIt<EpisodesRepositoryImpl>(),
      ));

  // // Регистрация BLoC
  getIt.registerFactory<CharactersBloc>(() => CharactersBloc(
        useCases: getIt<CharactersUseCases>(),
      ));
  getIt.registerFactory<LocationsBloc>(() => LocationsBloc(
        usecase: getIt<LocationsUseCases>(),
      ));
  getIt.registerFactory<EpisodesBloc>(() => EpisodesBloc(
        usecase: getIt<EpisodesUsecase>(),
      ));
}
