import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';

class DetailCharacterText extends StatelessWidget {
  const DetailCharacterText(
      {super.key, required this.characterInfo, required this.title});

  final String characterInfo;
  final String title;
  @override
  Widget build(BuildContext context) {
    const padding = 16;
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2 - padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .labelSmall
                ?.copyWith(color: AppColors.textGray),
          ),
          Text(
            characterInfo,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
