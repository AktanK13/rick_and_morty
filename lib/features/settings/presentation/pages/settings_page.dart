import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/core/utils/sized_box_helper.dart';
import 'package:rick_and_morty/shared/app_theme_bloc.dart';
import 'package:rick_and_morty/shared/widgets/divider_line.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Настройки",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                              "https://s3-alpha-sig.figma.com/img/68d8/7089/d36f153442643543e91adfb999cbcc8f?Expires=1725235200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=EszimM~Zgwf9bs3iYuwAYXIHAd6AkVIwvaexF5zoo3o4ziVAGKPh-iMiB2M5DerUEmRElY-pzL4UOVB-aKOIeOotaW8SIq92OzbzLWEN9SuYcMnfumT0McfQylyiZDtR6xwAVdM-9bN3yMs4rg55LXFF5iSPKsD0wderUVc5MRssN5EGKEVmIhtjyg1LUaz1TnMwkNTBbDBdj8TkTFPk16SDRyIzzwYgO6zvfyl1hT5DSdUjYUjKshEy7pyeuMRpaKo-pxVwN0PLEzJ1FxOqbE8kH5qMGS4V5l53fteRqqqLV-O9bQBovggGoakP~FirEdwwECC~5RZ96VNSHmtmlg__"),
                        ),
                        addHorizontalSpace(16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Oleg Belotserkovsky',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              Text(
                                'Rick',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge
                                    ?.copyWith(color: AppColors.textGray),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        style: Theme.of(context).elevatedButtonTheme.style,
                        onPressed: () {},
                        child: const Text("Редактировать"),
                      ),
                    ),
                    const DividerLine(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Внешний вид',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: AppColors.textGray),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.all(0),
                          leading: const Icon(
                            Icons.palette_outlined,
                            size: 36,
                          ),
                          title: Text(
                            'Темная тема',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          subtitle: Text(
                            'Включена',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(color: AppColors.textGray),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios),
                          onTap: () {
                            // BlocProvider.of<ThemeBloc>(context)
                            //     .add(ToggleTheme());
                            _showThemeDialog(context);
                          },
                        ),
                        const DividerLine(),
                        Text(
                          'О приложении',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: AppColors.textGray),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Зигерионцы помещают Джерри и Рика в симуляцию, чтобы узнать секрет изготовления концен-трирован- ной темной материи.',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        const DividerLine(),
                        Text(
                          'Версия приложения',
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
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
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
            'Выберите тему',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                RadioListTile<ThemeMode>(
                  title: Text(
                    'Выключенна',
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
                    'Включенна',
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
                    'Следовать настройкам системы',
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
                    'В режиме энергосбережения',
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
                'ОТМЕНА',
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
