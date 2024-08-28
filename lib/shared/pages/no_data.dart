import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/images/images_consts.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';

class NoData extends StatelessWidget {
  const NoData({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2.5,
              child: Image.asset(AppPng.notFound),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Персонажи не найдены',
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