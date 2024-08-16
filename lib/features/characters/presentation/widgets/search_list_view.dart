import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/utils/sized_box_helper.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/list_tile.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({
    super.key,
    required ScrollController scrollController,
    required List<CharactersEntity> characters,
  })  : _scrollController = scrollController,
        _characters = characters;

  final ScrollController _scrollController;
  final List<CharactersEntity> _characters;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: _scrollController,
      itemCount: _characters.length,
      separatorBuilder: (context, index) {
        return addVerticalSpace(16);
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
