import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/utils/shared_preferences_service.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("characters page"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {

      }),
    );
  }
}
