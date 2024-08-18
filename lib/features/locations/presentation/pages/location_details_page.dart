import 'package:flutter/material.dart';

import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/core/utils/sized_box_helper.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/detail_character_text.dart';
import 'package:rick_and_morty/features/locations/domain/entities/location_entity.dart';
import 'package:rick_and_morty/shared/widgets/divider_line.dart';

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
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
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
                const DividerLine(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        "Residents",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(fontWeight: FontWeight.w500),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        "Все residents",
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
          ),
        ],
      ),
    );
  }
}
