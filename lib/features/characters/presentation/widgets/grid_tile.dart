import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/detail_circle_avatar.dart';

import '../../../../core/router/app_router.dart';
import '../../../../core/styles/app_colors.dart';

class CustomGridTile extends StatelessWidget {
  const CustomGridTile({
    super.key,
    required this.character,
  });
  final CharactersEntity character;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go(AppRouter.charactersDetails, extra: character);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DetailCircleAvatar(
            radius: 60,
            imageurl: character.image,
          ),
          const SizedBox(
            height: 18,
          ),
          Flexible(
            child: Text(
              character.status == 'Alive' ? 'Живой' : 'Мертвый',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: character.status == 'Alive'
                        ? AppColors.statusAlive
                        : AppColors.statusDead,
                  ),
            ),
          ),
          Flexible(
            child: Text(
              character.name,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          Flexible(
            child: Text(
              '${character.species}/${character.gender == 'Male' ? 'Мужской' : 'Женский'}',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: AppColors.textGray,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
