import 'package:flutter/material.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/list_tile.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({
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
    return ListView.separated(
      controller: _scrollController,
      itemCount: _characters.length + (_isLoading ? 0 : 1),
      separatorBuilder: (context, index) {
        return const SizedBox(height: 16);
      },
      itemBuilder: (context, index) {
        if (index >= _characters.length) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return CustomListTile(character: _characters[index]);
      },
    );
  }
}
