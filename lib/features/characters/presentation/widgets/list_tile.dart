import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/router/app_router.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/core/styles/app_text_style.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/detail_circle_avatar.dart';

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
      onTap: () {
        context.go(AppRouter.charactersDetails, extra: character);
      },
      leading: DetailCircleAvatar(
        radius: 34,
        imageurl: character.image,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            character.status == 'Alive' ? 'Живой' : 'Мертвый',
            style: AppTextStyle.xSmallBlack.copyWith(
              color: character.status == 'Alive'
                  ? AppColors.statusAlive
                  : AppColors.statusDead,
            ),
          ),
          Text(
            character.name,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
      subtitle: Text(
        '${character.species}/${character.gender == 'Male' ? 'Мужской' : 'Женский'}',
        style: TextStyle(color: Theme.of(context).unselectedWidgetColor),
      ),
    );
  }
}
