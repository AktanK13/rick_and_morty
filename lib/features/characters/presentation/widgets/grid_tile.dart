import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/detail_circle_avatar.dart';

import '../../../../core/router/app_router.dart';
import '../../../../core/styles/app_colors.dart';
import '../../../../core/styles/app_text_style.dart';
import '../../../../core/utils/sized_box_helper.dart';

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
            radius: 40,
            imageurl: character.image,
          ),
          addVerticalSpace(18),
          Flexible(
            child: Text(
              character.status == 'Alive' ? 'Живой' : 'Мертвый',
              textAlign: TextAlign.center,
              style: AppTextStyle.xSmallBlack.copyWith(
                color: character.status == 'Alive'
                    ? AppColors.statusAlive
                    : AppColors.statusDead,
              ),
            ),
          ),
          Flexible(
            child: Text(
              character.name,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Flexible(
            child: Text(
              '${character.species}/${character.gender == 'Male' ? 'Мужской' : 'Женский'}',
              textAlign: TextAlign.center,
              style: TextStyle(color: Theme.of(context).unselectedWidgetColor),
            ),
          ),
        ],
      ),
    );
  }
}
