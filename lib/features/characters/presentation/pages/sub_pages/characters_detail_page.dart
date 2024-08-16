import 'package:flutter/material.dart';

import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/detail_app_bar.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/detail_character_info.dart';

class CharactersDetailPage extends StatelessWidget {
  const CharactersDetailPage({super.key, required this.character});

  final CharactersEntity character;
  @override
  Widget build(BuildContext context) {
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
