import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/features/characters/presentation/bloc/characters_bloc.dart';
import 'package:rick_and_morty/generated/locale_keys.g.dart';
import 'package:rick_and_morty/shared/widgets/divider_line.dart';
import '../../constants/enum_filter.dart';

class CharactersFilterPage extends StatelessWidget {
  const CharactersFilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    final CharactersBloc bloc = context.read<CharactersBloc>();
    final selectedStatus =
        ValueNotifier<String>(bloc.useCases.pagination.selectedStatus);
    final selectedGender =
        ValueNotifier<String>(bloc.useCases.pagination.selectedGender);

    void resetFilters() {
      selectedStatus.value = '';
      selectedGender.value = '';
    }

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
                        color: status == '' && gender == ''
                            ? AppColors.buttonDisabled
                            : AppColors.statusDead,
                      ),
                      onPressed: resetFilters,
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
                  style: theme.bodySmall?.copyWith(color: AppColors.textGray),
                ),
                const SizedBox(height: 8),
                ValueListenableBuilder<String>(
                  valueListenable: selectedStatus,
                  builder: (context, value, _) {
                    return Column(
                      children: [
                        RadioListTile<String>(
                          contentPadding: const EdgeInsets.all(0),
                          title: Text(LocaleKeys.alive.tr(),
                              style: theme.titleLarge),
                          value: Status.alive.description,
                          groupValue: value,
                          onChanged: (newValue) =>
                              selectedStatus.value = newValue ?? '',
                        ),
                        RadioListTile<String>(
                          contentPadding: const EdgeInsets.all(0),
                          title: Text(LocaleKeys.dead.tr(),
                              style: theme.titleLarge),
                          value: Status.dead.description,
                          groupValue: value,
                          onChanged: (newValue) =>
                              selectedStatus.value = newValue ?? '',
                        ),
                        RadioListTile<String>(
                          contentPadding: const EdgeInsets.all(0),
                          title: Text(LocaleKeys.unknow.tr(),
                              style: theme.titleLarge),
                          value: Status.unknown.description,
                          groupValue: value,
                          onChanged: (newValue) =>
                              selectedStatus.value = newValue ?? '',
                        ),
                      ],
                    );
                  },
                ),
                const DividerLine(),
                Text(
                  LocaleKeys.gender.tr(),
                  style: theme.bodySmall?.copyWith(color: AppColors.textGray),
                ),
                const SizedBox(height: 8),
                ValueListenableBuilder<String>(
                  valueListenable: selectedGender,
                  builder: (context, value, _) {
                    return Column(
                      children: [
                        RadioListTile<String>(
                          contentPadding: const EdgeInsets.all(0),
                          title: Text(LocaleKeys.male_g.tr(),
                              style: theme.titleLarge),
                          value: Gender.male.description,
                          groupValue: value,
                          onChanged: (newValue) =>
                              selectedGender.value = newValue ?? '',
                        ),
                        RadioListTile<String>(
                          contentPadding: const EdgeInsets.all(0),
                          title: Text(LocaleKeys.female_g.tr(),
                              style: theme.titleLarge),
                          value: Gender.female.description,
                          groupValue: value,
                          onChanged: (newValue) =>
                              selectedGender.value = newValue ?? '',
                        ),
                        RadioListTile<String>(
                          contentPadding: const EdgeInsets.all(0),
                          title: Text(LocaleKeys.unknow.tr(),
                              style: theme.titleLarge),
                          value: Gender.unknown.description,
                          groupValue: value,
                          onChanged: (newValue) =>
                              selectedGender.value = newValue ?? '',
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
            bloc.add(
              FetchCharacters(
                status: selectedStatus.value,
                gender: selectedGender.value,
              ),
            );
            context.pop();
          },
          child: const Icon(Icons.check),
        ),
      ),
    );
  }
}
