import 'package:flutter/material.dart';

import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/grid_tile.dart';

class CharacterPagedGridView extends StatelessWidget {
  const CharacterPagedGridView({
    super.key,
    required ScrollController scrollController,
    required List<CharactersEntity> characters,
    required bool isLoading,
  })  : _scrollController = scrollController,
        _characters = characters,
        _isLoading = isLoading;
  final ScrollController _scrollController;
  final List<CharactersEntity> _characters;
  final bool _isLoading;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView.builder(
        controller: _scrollController,
        itemCount: _characters.length + (_isLoading ? 1 : 0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.9,
        ),
        itemBuilder: (context, index) {
          return CustomGridTile(character: _characters[index]);
        },
      ),
    );
  }
}
