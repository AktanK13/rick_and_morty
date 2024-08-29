import 'package:flutter/material.dart';

import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/grid_tile.dart';

class CharacterPagedGridView extends StatelessWidget {
  const CharacterPagedGridView({
    super.key,
    required this.scrollController,
    required this.characters,
  });

  final ScrollController scrollController;
  final List<CharactersEntity> characters;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView.builder(
        controller: scrollController,
        itemCount: characters.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 24,
          childAspectRatio: 0.85,
        ),
        itemBuilder: (context, index) {
          final character = characters[index];
          return CustomGridTile(character: character);
        },
      ),
    );
  }
}
