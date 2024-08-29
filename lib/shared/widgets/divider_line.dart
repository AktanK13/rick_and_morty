import 'package:flutter/material.dart';

class DividerLine extends StatelessWidget {
  const DividerLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 36),
        Divider(
          height: 2,
          color: Theme.of(context).dividerColor,
        ),
        const SizedBox(height: 36),
      ],
    );
  }
}
