import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/core/utils/sized_box_helper.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/detail_character_text.dart';
import 'package:rick_and_morty/features/episodes/domain/entities/episodes_entity.dart';
import 'package:rick_and_morty/shared/widgets/divider_line.dart';

class EpisodeDetailPage extends StatelessWidget {
  const EpisodeDetailPage({
    super.key,
    required this.episode,
  });

  final EpisodesEntity episode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(episode.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  DetailCharacterText(
                    title: "Date",
                    characterInfo: episode.airDate,
                  ),
                  DetailCharacterText(
                    title: "Episode",
                    characterInfo: episode.episode,
                  )
                ],
              ),
              const DividerLine(),
              Row(
                children: [
                  Text(
                    "Characters",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  Text(
                    "Все characters",
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
      ),
    );
  }
}
