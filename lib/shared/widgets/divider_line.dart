import 'package:flutter/material.dart';

import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/core/utils/sized_box_helper.dart';

class DividerLine extends StatelessWidget {
  const DividerLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        addVerticalSpace(36),
        const Divider(
          height: 2,
          color: AppColors.dividerColor,
        ),
        addVerticalSpace(36),
      ],
    );
  }
}
