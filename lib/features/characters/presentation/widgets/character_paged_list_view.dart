import 'package:flutter/material.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/list_tile.dart';

class CharacterPagedListView extends StatelessWidget {
  const CharacterPagedListView({
    super.key,
    required ScrollController scrollController,
    required List<CharactersEntity> characters,
    required bool hasReachedMax,
  })  : _scrollController = scrollController,
        _characters = characters,
        _hasReachedMax = hasReachedMax;
  final ScrollController _scrollController;
  final List<CharactersEntity> _characters;
  final bool _hasReachedMax;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.separated(
        controller: _scrollController,
        itemCount: _characters.length + (_hasReachedMax ? 0 : 1),
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 16,
          );
        },
        itemBuilder: (context, index) {
          if (index >= _characters.length) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return CustomListTile(character: _characters[index]);
        },
      ),
    );
  }
}
