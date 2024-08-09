
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/detail_app_bar.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/detail_character_info.dart';

class CharactersDetailPage extends StatelessWidget {
  const CharactersDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CharactersEntity character =
        GoRouterState.of(context).extra as CharactersEntity;
    return Scaffold(
      body: Column(
        children: <Widget>[
          DetailAppBar(character: character),
          DetailCharacterInfo(character: character)
        ],
      ),
    );
  }
}
