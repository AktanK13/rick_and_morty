import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/core/styles/app_text_style.dart';
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
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        centerTitle: false,
      ),
      body: SafeArea(
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
                        backgroundColor: Colors.amber,
                      ),
                      addHorizontalSpace(16),
                      Column(
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
                                .titleMedium
                                ?.copyWith(color: AppColors.textGray),
                          )
                        ],
                      )
                    ],
                  ),
                  addVerticalSpace(30),
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
                      const Text('Внешний вид'),
                      addVerticalSpace(12),
                      ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        leading: const Icon(
                          Icons.palette_outlined,
                          size: 36,
                        ),
                        title: Text(
                          'Темная тема',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        subtitle: Text(
                          'Включена',
                          style: AppTextStyle.mediumBlack
                              .copyWith(color: AppColors.textGray),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: () {
                          // BlocProvider.of<ThemeBloc>(context)
                          //     .add(ToggleTheme());
                          _showThemeDialog(context);
                        },
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.switch_right),
          onPressed: () {
            BlocProvider.of<ThemeBloc>(context).add(ToggleTheme());
          }),
    );
  }

  void _showThemeDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor:
              Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          title: Text('Темная тема',
              style: Theme.of(context).textTheme.titleLarge),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RadioListTile<ThemeMode>(
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                title: Text('Выключенна',
                    style: Theme.of(context).textTheme.titleLarge),
                value: ThemeMode.light,
                groupValue: ThemeMode.system,
                onChanged: (ThemeMode? value) {
                  //TODO logic theme
                  Navigator.pop(context);
                },
              ),
              RadioListTile<ThemeMode>(
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                title: Text('Включенна',
                    style: Theme.of(context).textTheme.titleLarge),
                value: ThemeMode.dark,
                groupValue: ThemeMode.system,
                onChanged: (ThemeMode? value) {
                  // Логика выбора режима темы
                  Navigator.pop(context);
                },
              ),
              RadioListTile<ThemeMode>(
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                title: Text('Следовать настройкам системы',
                    style: Theme.of(context).textTheme.titleLarge),
                value: ThemeMode.system,
                groupValue: ThemeMode.system,
                onChanged: (ThemeMode? value) {
                  // Логика выбора режима темы
                  Navigator.pop(context);
                },
              ),
              RadioListTile<ThemeMode>(
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                title: Text('В режиме энергосбережения',
                    style: Theme.of(context).textTheme.titleLarge),
                value: ThemeMode.system,
                groupValue: ThemeMode.system,
                onChanged: (ThemeMode? value) {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('ОТМЕНА'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
