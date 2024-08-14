import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:rick_and_morty/core/router/app_router.dart';
import 'package:rick_and_morty/core/styles/app_text_style.dart';
import 'package:rick_and_morty/core/utils/sized_box_helper.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/detail_circle_avatar.dart';

import '../../../../core/styles/app_colors.dart';

class CharacterPagedGridView extends StatelessWidget {
  const CharacterPagedGridView({super.key, required this.pagingController});

  final PagingController<int, CharactersEntity> pagingController;
  @override
  Widget build(BuildContext context) {
    return PagedGridView<int, CharactersEntity>(
      pagingController: pagingController,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1,
      ),
      builderDelegate: PagedChildBuilderDelegate<CharactersEntity>(
        itemBuilder: (context, character, index) {
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
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                Flexible(
                  child: Text(
                    '${character.species}/${character.gender == 'Male' ? 'Мужской' : 'Женский'}',
                    style: TextStyle(
                        color: Theme.of(context).unselectedWidgetColor),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}


// ListTile(
//               onTap: () {
//                 context.go(AppRouter.charactersDetails, extra: character);
//               },
//               leading: DetailCircleAvatar(
//                 radius: 35,
//                 imageurl: character.image,
//               ),
//               title: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     character.status == 'Alive' ? 'Живой' : 'Мертвый',
//                     style: AppTextStyle.xSmallBlack.copyWith(
//                       color: character.status == 'Alive'
//                           ? AppColors.statusAlive
//                           : AppColors.statusDead,
//                     ),
//                   ),
//                   Text(
//                     character.name,
//                     style: Theme.of(context).textTheme.titleMedium,
//                   ),
//                 ],
//               ),
//               subtitle: Text(
//                 '${character.species}/${character.gender == 'Male' ? 'Мужской' : 'Женский'}',
//                 style:
//                     TextStyle(color: Theme.of(context).unselectedWidgetColor),
//               ),
//             ),