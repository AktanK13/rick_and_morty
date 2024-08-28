import 'package:flutter/material.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/custom_sliver_delegate.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/detail_character_info.dart';

class CharactersDetailPage extends StatelessWidget {
  const CharactersDetailPage({super.key, required this.character});

  final CharactersEntity character;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            floating: true,
            delegate: CustomSliverDelegate(
              character: character,
              expandedHeight: 200,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                DetailCharacterInfo(character: character),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
