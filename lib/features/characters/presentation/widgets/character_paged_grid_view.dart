import 'package:flutter/material.dart';

import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/grid_tile.dart';

class CharacterPagedGridView extends StatelessWidget {
  const CharacterPagedGridView({
    super.key,
    required ScrollController scrollController,
    required List<CharactersEntity> characters,
    required bool hasReachedMax,
  })  : _scrollController = scrollController,
        _characters = characters;
  final ScrollController _scrollController;
  final List<CharactersEntity> _characters;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView.builder(
        controller: _scrollController,
        itemCount: _characters.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 24,
          childAspectRatio: 0.78,
        ),
        itemBuilder: (context, index) {
          return CustomGridTile(character: _characters[index]);
        },
      ),
    );
  }
}
