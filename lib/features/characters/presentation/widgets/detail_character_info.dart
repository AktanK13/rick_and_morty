import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/detail_character_list_tile.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/detail_character_text.dart';
import 'package:rick_and_morty/generated/locale_keys.g.dart';
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
                title: LocaleKeys.gender.tr(),
                characterInfo: character.gender,
              ),
              DetailCharacterText(
                title: LocaleKeys.species.tr(),
                characterInfo: character.species,
              )
            ],
          ),
          const SizedBox(height: 20),
          DetailCharacterListTile(
            characterInfo: character.origin.name,
            title: LocaleKeys.berth_land.tr(),
          ),
          const SizedBox(height: 5),
          DetailCharacterListTile(
            characterInfo: character.location.name,
            title: LocaleKeys.location.tr(),
          ),
          const DividerLine(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  LocaleKeys.episodes.tr(),
                  style:
                      theme.titleMedium?.copyWith(fontWeight: FontWeight.w500),
                ),
              ),
              Flexible(
                child: Text(
                  LocaleKeys.all_episodes.tr(),
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
