import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/core/styles/app_text_style.dart';

class DetailCharacterText extends StatelessWidget {
  const DetailCharacterText({super.key, required this.characterInfo, required this.title});

  final String characterInfo;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2 - 16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyle.mediumBlack.copyWith(color: AppColors.textGray),
          ),
          Text(
            characterInfo,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
