import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/router/router.dart';
import 'package:rick_and_morty/core/utils/injections.dart';
import 'package:rick_and_morty/features/characters/presentation/bloc/characters_bloc.dart';
import 'package:rick_and_morty/features/episodes/presentation/bloc/episodes_bloc.dart';
import 'package:rick_and_morty/features/locations/presentation/bloc/locations_bloc.dart';
import 'package:rick_and_morty/shared/app_theme_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final ThemeState initialThemeState = await ThemeBloc.getInitialTheme();
  setup();
  runApp(MyApp(initialThemeState));
}

class MyApp extends StatelessWidget {
  final ThemeState initialThemeState;

  const MyApp(this.initialThemeState, {super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CharactersBloc>(
          create: (context) => getIt<CharactersBloc>(),
        ),
        // BlocProvider<LocationsBloc>(
        //   create: (context) => getIt<LocationsBloc>(),
        // ),
        BlocProvider<EpisodesBloc>(
          create: (context) => getIt<EpisodesBloc>(),
        ),
        BlocProvider(create: (context) => ThemeBloc(initialThemeState))
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (BuildContext context, ThemeState themeState) {
        return MaterialApp.router(
          title: 'Rick & Mirty',
          debugShowCheckedModeBanner: false,
          theme: themeState.themeData,
          routerConfig: router,
        );
      }),
    );
  }
}
