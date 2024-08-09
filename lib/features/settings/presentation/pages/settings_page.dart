import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/shared/app_theme_bloc.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("characters page"),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.switch_right),
          onPressed: () {
            BlocProvider.of<ThemeBloc>(context).add(ToggleTheme());
          }),
    );
  }
}
