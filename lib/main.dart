import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/router/router.dart';
import 'package:rick_and_morty/core/utils/injections.dart';
import 'package:rick_and_morty/shared/app_theme_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final ThemeState initialTheme = await ThemeBloc.getInitialTheme();
  configureDependencies();
  runApp(MyApp(initialTheme));
}

class MyApp extends StatelessWidget {
  final ThemeState initialTheme;

  const MyApp(this.initialTheme, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeBloc(initialTheme),
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
