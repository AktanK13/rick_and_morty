import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/core/utils/sized_box_helper.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/detail_character_list_tile.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/detail_character_text.dart';

class DetailCharacterInfo extends StatelessWidget {
  const DetailCharacterInfo({super.key, required this.character});

  final CharactersEntity character;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Text(
                character.name,
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(fontWeight: FontWeight.w500),
              ),
            ),
            addVerticalSpace(5),
            Center(
              child: Text(
                character.status,
                style: TextStyle(
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
            addVerticalSpace(36),
            Divider(
              height: 2.h,
              color: AppColors.dividerColor,
            ),
            addVerticalSpace(36),
            Row(
              children: [
                Text(
                  "Эпизоды",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                Text(
                  "Все эпизоды",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: AppColors.textGray),
                )
              ],
            ),
            addVerticalSpace(24),
            // TODO: parse dataile episode
            // Expanded(
            //   child: ListView.separated(
            //     itemBuilder: (context, index) {
            //       return ListTile(
            //         contentPadding: const EdgeInsets.all(0),
            //         title: Text(
            //           character.episode[index],
            //           style: AppTextStyle.mediumBlack
            //               .copyWith(color: AppColors.textGray),
            //         ),
            //         subtitle: Text(
            //           character.origin.name,
            //           style: Theme.of(context).textTheme.titleMedium,
            //         ),
            //         trailing: const Icon(
            //           Icons.arrow_forward_ios,
            //         ),
            //       );
            //     },
            //     separatorBuilder: (BuildContext context, int index) {
            //       return addVerticalSpace(24);
            //     },
            //     itemCount: character.episode.length,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
