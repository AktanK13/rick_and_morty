
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/generated/locale_keys.g.dart';
import 'package:rick_and_morty/shared/widgets/divider_line.dart';

import '../../../../shared/app_theme_bloc.dart';

class SettingList extends StatelessWidget {
  const SettingList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocaleKeys.appearance.tr(),
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: AppColors.textGray),
        ),
        const SizedBox(height: 12),
        ListTile(
          contentPadding: const EdgeInsets.all(0),
          leading: const Icon(
            Icons.palette_outlined,
            size: 36,
          ),
          title: Text(
            LocaleKeys.dark_theme.tr(),
            style: Theme.of(context).textTheme.titleLarge,
          ),
          subtitle: Text(
            LocaleKeys.theme_enabled.tr(),
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: AppColors.textGray),
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            _showThemeDialog(context);
          },
        ),
        const SizedBox(height: 12),
        ListTile(
          contentPadding: const EdgeInsets.all(0),
          leading: const Icon(
            Icons.language_outlined,
            size: 36,
          ),
          title: Text(
            LocaleKeys.language.tr(),
            style: Theme.of(context).textTheme.titleLarge,
          ),
          //TODO: change to setable
          subtitle: Text(
            LocaleKeys.theme_enabled.tr(),
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: AppColors.textGray),
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            _showLangDialog(context);
          },
        ),
        const DividerLine(),
        Text(
          LocaleKeys.about_title.tr(),
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: AppColors.textGray),
        ),
        const SizedBox(height: 12),
        Text(
          LocaleKeys.about_text.tr(),
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const DividerLine(),
        Text(
          LocaleKeys.application_version.tr(),
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: AppColors.textGray),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          'Rick & Morty  v1.0.0',
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ],
    );
  }

  void _showThemeDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final themeBloc = BlocProvider.of<ThemeBloc>(context);
        final themeMode = themeBloc.state.themeMode;
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          titlePadding: const EdgeInsets.all(20),
          contentPadding: const EdgeInsets.all(0),
          title: Text(
            LocaleKeys.select_theme.tr(),
            style: Theme.of(context).textTheme.titleMedium,
          ),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                RadioListTile<ThemeMode>(
                  title: Text(
                    LocaleKeys.theme_disenabled.tr(),
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  value: ThemeMode.light,
                  groupValue: themeMode,
                  onChanged: (ThemeMode? value) {
                    if (value != null) {
                      themeBloc.add(ChangeThemeMode(value));
                    }
                    Navigator.pop(context);
                  },
                ),
                RadioListTile<ThemeMode>(
                  title: Text(
                    LocaleKeys.theme_enabled.tr(),
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  value: ThemeMode.dark,
                  groupValue: themeMode,
                  onChanged: (ThemeMode? value) {
                    if (value != null) {
                      themeBloc.add(ChangeThemeMode(value));
                    }
                    Navigator.pop(context);
                  },
                ),
                RadioListTile<ThemeMode>(
                  title: Text(
                    LocaleKeys.theme_follow_system.tr(),
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  value: ThemeMode.system,
                  groupValue: themeMode,
                  onChanged: (ThemeMode? value) {
                    if (value != null) {
                      themeBloc.add(ChangeThemeMode(value));
                    }
                    Navigator.pop(context);
                  },
                ),
                RadioListTile<ThemeMode>(
                  title: Text(
                    LocaleKeys.theme_power_save.tr(),
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  value: ThemeMode.system,
                  groupValue: themeMode,
                  onChanged: (ThemeMode? value) {
                    if (value != null) {
                      themeBloc.add(ChangeThemeMode(value));
                    }
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                LocaleKeys.cancel.tr(),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  void _showLangDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final locale = context.locale;
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          titlePadding: const EdgeInsets.all(20),
          contentPadding: const EdgeInsets.all(0),
          title: Text(
            LocaleKeys.select_language.tr(),
            style: Theme.of(context).textTheme.titleMedium,
          ),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                RadioListTile<Locale>(
                  title: Text(
                    LocaleKeys.russian.tr(),
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  value: const Locale('ru'),
                  groupValue: locale,
                  onChanged: (Locale? value) {
                    context.setLocale(value!);
                    Navigator.pop(context);
                  },
                ),
                RadioListTile<Locale>(
                  title: Text(
                    LocaleKeys.english.tr(),
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  value: const Locale('en'),
                  groupValue: locale,
                  onChanged: (Locale? value) {
                    context.setLocale(value!);
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                LocaleKeys.cancel.tr(),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
