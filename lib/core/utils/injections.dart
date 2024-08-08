import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:rick_and_morty/core/utils/shared_preferences_service.dart';
import 'package:rick_and_morty/features/characters/data/datasources/characters_remote_data_source.dart';
import 'package:rick_and_morty/features/characters/data/repositories/characters_repository_impl.dart';
import 'package:rick_and_morty/features/characters/domain/usecases/use_cases.dart';
import 'package:rick_and_morty/features/characters/presentation/bloc/characters_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt getIt = GetIt.instance;

void setup() async {
  // Регистрация клиента dio
  getIt.registerLazySingleton<Dio>(() => Dio());
  final sharedPreferences = await SharedPreferences.getInstance();

  // // Регистрация SharedPreference
  //   getIt.registerFactory<SharedPreferencesService>(
  //     () => SharedPreferencesService());

  // Регистрация remote data source
  getIt.registerLazySingleton<CharactersRemoteDataSource>(
      () => CharactersRemoteDataSource(
            client: getIt<Dio>(),
          ));

  // // Регистрация repository
  getIt.registerLazySingleton<CharactersRepositoryImpl>(
      () => CharactersRepositoryImpl(
            remoteDataSource: getIt<CharactersRemoteDataSource>(),
          ));

  // // Регистрация Use Cases
  getIt.registerLazySingleton<UseCases>(() => UseCases(
        repository: getIt<CharactersRepositoryImpl>(),
      ));

  // // Регистрация BLoC
  getIt.registerFactory<CharactersBloc>(() => CharactersBloc(
        useCases: getIt<UseCases>(),
      ));
}
