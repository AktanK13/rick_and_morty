import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/router/app_router.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/detail_circle_avatar.dart';
import 'package:rick_and_morty/generated/locale_keys.g.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.character,
  });

  final CharactersEntity character;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      horizontalTitleGap: 10,
      minVerticalPadding: 0,
      onTap: () => context.go(AppRouter.charactersDetails, extra: character),
      dense: false,
      visualDensity: const VisualDensity(vertical: 4),
      leading: DetailCircleAvatar(radius: 37, imageurl: character.image),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            character.status == 'Alive'
                ? LocaleKeys.alive.tr()
                : LocaleKeys.dead.tr(),
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: character.status == 'Alive'
                      ? AppColors.statusAlive
                      : AppColors.statusDead,
                ),
          ),
          Text(
            character.name,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
      subtitle: Text(
        '${character.species}/${character.gender == 'Male' ? LocaleKeys.male_g.tr() : LocaleKeys.female_g.tr()}',
        style: Theme.of(context)
            .textTheme
            .labelSmall
            ?.copyWith(color: AppColors.textGray),
      ),
    );
  }
}
