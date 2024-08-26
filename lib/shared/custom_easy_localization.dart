import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/generated/codegen_loader.g.dart';

class CustomEasyLocalization extends StatelessWidget {
  const CustomEasyLocalization({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ru')],
      path: 'assets/translations',
      fallbackLocale: const Locale('ru'),
      assetLoader: const CodegenLoader(),
      child: child,
    );
  }
}
