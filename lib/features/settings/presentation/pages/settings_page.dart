import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/features/settings/presentation/widgets/setting_profile.dart';
import 'package:rick_and_morty/shared/widgets/divider_line.dart';

import '../../../../generated/locale_keys.g.dart';
import '../widgets/setting_list.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.settings.tr(),
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: false,
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Column(
              children: [
                SettingProfile(),
                DividerLine(),
                SettingList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
