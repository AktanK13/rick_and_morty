import 'package:flutter/material.dart';

import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/detail_character_list_tile.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/detail_character_text.dart';
import 'package:rick_and_morty/shared/widgets/divider_line.dart';
import 'package:rick_and_morty/shared/widgets/static_episodes_list_tile.dart';

class DetailCharacterInfo extends StatelessWidget {
  const DetailCharacterInfo({super.key, required this.character});

  final CharactersEntity character;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Center(
            child: Text(character.name,
                textAlign: TextAlign.center, style: theme.displaySmall),
          ),
          const SizedBox(height: 5),
          Center(
            child: Text(
              character.status,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: character.status == 'Alive'
                    ? AppColors.statusAlive
                    : AppColors.statusDead,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              DetailCharacterText(
                title: "Пол",
                characterInfo: character.gender,
              ),
              DetailCharacterText(
                title: "Расса",
                characterInfo: character.species,
              )
            ],
          ),
          const SizedBox(height: 20),
          DetailCharacterListTile(
            characterInfo: character.origin.name,
            title: "Место рождения",
          ),
          const SizedBox(height: 5),
          DetailCharacterListTile(
            characterInfo: character.location.name,
            title: "Местоположение",
          ),
          const DividerLine(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  "Эпизоды",
                  style:
                      theme.titleMedium?.copyWith(fontWeight: FontWeight.w500),
                ),
              ),
              Flexible(
                child: Text(
                  "Все эпизоды",
                  style: theme.labelSmall?.copyWith(color: AppColors.textGray),
                ),
              )
            ],
          ),
          const SizedBox(height: 24),
          const StaticEpisodesListTile(),
        ],
      ),
    );
  }
}
