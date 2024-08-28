import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/detail_character_text.dart';
import 'package:rick_and_morty/features/locations/domain/entities/location_entity.dart';
import 'package:rick_and_morty/generated/locale_keys.g.dart';
import 'package:rick_and_morty/shared/widgets/divider_line.dart';

class LocationDetailsPage extends StatelessWidget {
  const LocationDetailsPage({
    super.key,
    required this.location,
  });

  final LocationEntity location;
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
                const SizedBox(height: 24),
                Row(
                  children: [
                    DetailCharacterText(
                      title: LocaleKeys.type.tr(),
                      characterInfo: location.type,
                    ),
                    DetailCharacterText(
                      title: LocaleKeys.dimension.tr(),
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
                        LocaleKeys.residents.tr(),
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(fontWeight: FontWeight.w500),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        LocaleKeys.all_residents.tr(),
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall
                            ?.copyWith(color: AppColors.textGray),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
