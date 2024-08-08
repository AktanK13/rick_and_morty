import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/router/router.dart';
import 'package:rick_and_morty/core/styles/app_theme.dart';
import 'package:rick_and_morty/core/utils/injections.dart';
import 'package:rick_and_morty/features/characters/presentation/bloc/characters_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CharactersBloc>(
          create: (context) => getIt<CharactersBloc>(),
        ),
      ],
      child: MaterialApp.router(
            title: 'Rick & Mirty',
            debugShowCheckedModeBanner: false,
            theme: getAppTheme(context, false),
            routerConfig: router,
          ),
    );
  }
}