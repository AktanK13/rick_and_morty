import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/images/images_consts.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/core/utils/sized_box_helper.dart';

class NotFound extends StatelessWidget {
  const NotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            addVerticalSpace(60),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2.5,
              child: Image.asset(AppPng.notFound),
            ),
            addVerticalSpace(20),
            Text(
              'Персонаж с таким именем не найден',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: AppColors.textGray),
            )
          ],
        ),
      ),
    );
  }
}
