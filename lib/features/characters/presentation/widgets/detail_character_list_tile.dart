import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/core/styles/app_text_style.dart';

class DetailCharacterListTile extends StatelessWidget {
  const DetailCharacterListTile(
      {super.key,
      required this.characterInfo,
      required this.title,
      this.routerUrl});

  final String characterInfo;
  final String title;
  final String? routerUrl;
  // TODO: add routerUrl
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      title: Text(
        title,
        style: AppTextStyle.mediumBlack.copyWith(color: AppColors.textGray),
      ),
      subtitle: Text(
        characterInfo,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
      ),
    );
  }
}
