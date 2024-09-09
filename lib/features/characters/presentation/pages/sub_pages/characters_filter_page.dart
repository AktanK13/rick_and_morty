import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/generated/locale_keys.g.dart';

import 'package:rick_and_morty/shared/widgets/divider_line.dart';

import '../../constants/enum_filter.dart';

class CharactersFilterPage extends StatefulWidget {
  const CharactersFilterPage({
    super.key,
    required this.extra,
  });

  final Map<String, String> extra;

  @override
  State<CharactersFilterPage> createState() => _CharactersFilterPageState();
}

class _CharactersFilterPageState extends State<CharactersFilterPage> {
  late ValueNotifier<String> selectedStatus;
  late ValueNotifier<String> selectedGender;

  @override
  void initState() {
    super.initState();
    selectedStatus = ValueNotifier<String>(widget.extra["status"] ?? '');
    selectedGender = ValueNotifier<String>(widget.extra["gender"] ?? '');
  }

  @override
  void dispose() {
    selectedStatus.dispose();
    selectedGender.dispose();
    super.dispose();
  }

  void _resetFilters() {
    selectedStatus.value = '';
    selectedGender.value = '';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    const alive = Status.alive;
    const dead = Status.dead;
    const statusUnknown = Status.unknown;
    const male = Gender.male;
    const female = Gender.female;
    const genderUnknown = Gender.unknown;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).inputDecorationTheme.fillColor,
          title: Text(
            LocaleKeys.filter.tr(),
            style: theme.titleMedium,
          ),
          leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios), onPressed: context.pop),
          centerTitle: false,
          actions: [
            ValueListenableBuilder<String>(
              valueListenable: selectedStatus,
              builder: (context, status, _) {
                return ValueListenableBuilder<String>(
                  valueListenable: selectedGender,
                  builder: (context, gender, _) {
                    return IconButton(
                      icon: Icon(
                        Icons.filter_alt_off,
                        color: (status == Status.unknown.description &&
                                gender == Gender.unknown.description)
                            ? AppColors.buttonDisabled
                            : AppColors.statusDead,
                      ),
                      onPressed: _resetFilters,
                    );
                  },
                );
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  LocaleKeys.status.tr(),
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: AppColors.textGray),
                ),
                const SizedBox(height: 8),
                ValueListenableBuilder<String>(
                  valueListenable: selectedStatus,
                  builder: (context, status, _) {
                    return Column(
                      children: [
                        RadioListTile<String>(
                          contentPadding: const EdgeInsets.all(0),
                          title: Text(
                            LocaleKeys.alive.tr(),
                            style: theme.titleLarge,
                          ),
                          value: alive.description,
                          groupValue: status,
                          onChanged: (value) {
                            selectedStatus.value = value ?? alive.description;
                          },
                        ),
                        RadioListTile<String>(
                          contentPadding: const EdgeInsets.all(0),
                          title: Text(
                            LocaleKeys.dead.tr(),
                            style: theme.titleLarge,
                          ),
                          value: dead.description,
                          groupValue: status,
                          onChanged: (value) {
                            selectedStatus.value = value ?? dead.description;
                          },
                        ),
                        RadioListTile<String>(
                          contentPadding: const EdgeInsets.all(0),
                          title: Text(
                            LocaleKeys.unknow.tr(),
                            style: theme.titleLarge,
                          ),
                          value: statusUnknown.description,
                          groupValue: status,
                          onChanged: (value) {
                            selectedStatus.value =
                                value ?? statusUnknown.description;
                          },
                        ),
                      ],
                    );
                  },
                ),
                const DividerLine(),
                Text(
                  LocaleKeys.gender.tr(),
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: AppColors.textGray),
                ),
                const SizedBox(height: 8),
                ValueListenableBuilder<String>(
                  valueListenable: selectedGender,
                  builder: (context, gender, _) {
                    return Column(
                      children: [
                        RadioListTile<String>(
                          contentPadding: const EdgeInsets.all(0),
                          title: Text(
                            LocaleKeys.male_g.tr(),
                            style: theme.titleLarge,
                          ),
                          value: male.description,
                          groupValue: gender,
                          onChanged: (value) {
                            selectedGender.value = value ?? male.description;
                          },
                        ),
                        RadioListTile<String>(
                          contentPadding: const EdgeInsets.all(0),
                          title: Text(
                            LocaleKeys.female_g.tr(),
                            style: theme.titleLarge,
                          ),
                          value: female.description,
                          groupValue: gender,
                          onChanged: (value) {
                            selectedGender.value = value ?? female.description;
                          },
                        ),
                        RadioListTile<String>(
                          contentPadding: const EdgeInsets.all(0),
                          title: Text(
                            LocaleKeys.unknow.tr(),
                            style: theme.titleLarge,
                          ),
                          value: genderUnknown.description,
                          groupValue: gender,
                          onChanged: (value) {
                            selectedGender.value =
                                value ?? genderUnknown.description;
                          },
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.pop({
              'status': selectedStatus.value,
              'gender': selectedGender.value,
            });
          },
          child: const Icon(Icons.check),
        ),
      ),
    );
  }
}
