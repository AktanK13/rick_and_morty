import 'package:flutter/material.dart';

import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/core/utils/sized_box_helper.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/detail_character_list_tile.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/detail_character_text.dart';
import 'package:rick_and_morty/shared/widgets/divider_line.dart';

class DetailCharacterInfo extends StatelessWidget {
  const DetailCharacterInfo({super.key, required this.character});

  final CharactersEntity character;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          Center(
            child: Text(character.name,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displaySmall),
          ),
          addVerticalSpace(5),
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
          addVerticalSpace(30),
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
          addVerticalSpace(20),
          DetailCharacterListTile(
            characterInfo: character.origin.name,
            title: "Место рождения",
          ),
          addVerticalSpace(5),
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
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
              ),
              Flexible(
                child: Text(
                  "Все эпизоды",
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall
                      ?.copyWith(color: AppColors.textGray),
                ),
              )
            ],
          ),
          addVerticalSpace(24),
        ],
      ),
    );
  }
}
