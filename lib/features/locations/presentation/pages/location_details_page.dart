import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/core/utils/sized_box_helper.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/detail_character_text.dart';
import 'package:rick_and_morty/features/locations/domain/entities/location_entity.dart';

class LocationDetailsPage extends StatelessWidget {
  const LocationDetailsPage({
    super.key,
    required this.location,
  });

  final LocationsEntity location;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  DetailCharacterText(
                    title: "Тип",
                    characterInfo: location.type,
                  ),
                  DetailCharacterText(
                    title: "Dimension",
                    characterInfo: location.dimension,
                  )
                ],
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
                    "Residents",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  Text(
                    "Все residents",
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
