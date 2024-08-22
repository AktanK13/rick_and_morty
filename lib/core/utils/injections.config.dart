// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:rick_and_morty/core/utils/di_module.dart' as _i492;
import 'package:rick_and_morty/features/characters/data/datasources/characters_remote_data_source.dart'
    as _i662;
import 'package:rick_and_morty/features/characters/domain/repositories/characters_repository.dart'
    as _i77;
import 'package:rick_and_morty/features/characters/domain/usecases/use_cases.dart'
    as _i7;
import 'package:rick_and_morty/features/characters/presentation/bloc/characters_bloc.dart'
    as _i314;
import 'package:rick_and_morty/features/episodes/data/datasources/episodes_remote_data_source.dart'
    as _i715;
import 'package:rick_and_morty/features/episodes/domain/repositories/episodes_repository.dart'
    as _i938;
import 'package:rick_and_morty/features/episodes/domain/usecases/episodes_usecase.dart'
    as _i533;
import 'package:rick_and_morty/features/episodes/presentation/bloc/episodes_bloc.dart'
    as _i218;
import 'package:rick_and_morty/features/locations/data/datasources/locations_remote_data_source.dart'
    as _i748;
import 'package:rick_and_morty/features/locations/domain/repositories/locations_repository.dart'
    as _i966;
import 'package:rick_and_morty/features/locations/domain/usecases/use_cases.dart'
    as _i54;
import 'package:rick_and_morty/features/locations/presentation/bloc/locations_bloc.dart'
    as _i1050;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i314.CharactersBloc>(() => registerModule.charactersBloc);
    gh.factory<_i1050.LocationsBloc>(() => registerModule.locationsBloc);
    gh.factory<_i218.EpisodesBloc>(() => registerModule.episodesBloc);
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i662.CharactersRemoteDataSource>(
        () => registerModule.charactersRemoteDataSource);
    gh.lazySingleton<_i748.LocationsRemoteDataSource>(
        () => registerModule.locationsRemoteDataSource);
    gh.lazySingleton<_i715.EpisodesRemoteDataSource>(
        () => registerModule.episodesRemoteDataSource);
    gh.lazySingleton<_i77.CharactersRepository>(
        () => registerModule.charactersRepository);
    gh.lazySingleton<_i966.LocationsRepository>(
        () => registerModule.locationsRepository);
    gh.lazySingleton<_i938.EpisodesRepository>(
        () => registerModule.episodesRepository);
    gh.lazySingleton<_i7.CharactersUseCases>(
        () => registerModule.charactersUseCases);
    gh.lazySingleton<_i54.LocationsUseCases>(
        () => registerModule.locationsUseCases);
    gh.lazySingleton<_i533.EpisodesUsecase>(
        () => registerModule.episodesUsecase);
    return this;
  }
}

class _$RegisterModule extends _i492.RegisterModule {}
