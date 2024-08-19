import 'package:flutter/material.dart';

import 'package:rick_and_morty/core/utils/sized_box_helper.dart';

class DividerLine extends StatelessWidget {
  const DividerLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        addVerticalSpace(36),
        Divider(
          height: 2,
          color: Theme.of(context).dividerColor,
        ),
        addVerticalSpace(36),
      ],
    );
  }
}
