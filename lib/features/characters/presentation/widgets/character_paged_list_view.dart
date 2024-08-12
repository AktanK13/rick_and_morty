import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/core/styles/app_text_style.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/detail_circle_avatar.dart';

import '../../../../core/router/app_router.dart';

class CharacterPagedListView extends StatelessWidget {
  const CharacterPagedListView({super.key, required this.pagingController});

  final PagingController<int, CharactersEntity> pagingController;
  @override
  Widget build(BuildContext context) {
    return PagedListView<int, CharactersEntity>(
      pagingController: pagingController,
      builderDelegate: PagedChildBuilderDelegate<CharactersEntity>(
        itemBuilder: (context, character, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: ListTile(
              contentPadding: const EdgeInsets.all(0),
              horizontalTitleGap: 0,
              onTap: () {
                context.go(AppRouter.charactersDetails, extra: character);
              },
              leading: DetailCircleAvatar(
                radius: 34.r,
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
                style:
                    TextStyle(color: Theme.of(context).unselectedWidgetColor),
              ),
            ),
          );
        },
      ),
    );
  }
}
