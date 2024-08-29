import 'package:flutter/material.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/list_tile.dart';

class CharacterPagedListView extends StatelessWidget {
  const CharacterPagedListView({
    super.key,
    required this.scrollController,
    required this.characters,
    required this.hasReachedMax,
  });

  final ScrollController scrollController;
  final List<CharactersEntity> characters;
  final bool hasReachedMax;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.separated(
        controller: scrollController,
        itemCount: characters.length + (hasReachedMax ? 0 : 1),
        separatorBuilder: (context, index) {
          return const SizedBox(height: 16);
        },
        itemBuilder: (context, index) {
          if (index >= characters.length) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          final character = characters[index];
          return CustomListTile(character: character);
        },
      ),
    );
  }
}
