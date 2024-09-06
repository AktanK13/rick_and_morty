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

    var selectedStatus =
        context.watch<CharactersBloc>().useCases.pagination.selectedStatus;
    var selectedGender =
        context.watch<CharactersBloc>().useCases.pagination.selectedGender;

    void resetFilters() {
      selectedStatus = FilterStatus.unknown;
      selectedGender = FilterGender.unknown;
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
            IconButton(
              icon: Icon(
                Icons.filter_alt_off,
                color: selectedStatus == FilterStatus.unknown &&
                        selectedGender == FilterGender.unknown
                    ? AppColors.buttonDisabled
                    : AppColors.statusDead,
              ),
              onPressed: resetFilters,
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
                Column(
                  children: [
                    RadioListTile<FilterStatus>(
                      contentPadding: const EdgeInsets.all(0),
                      title:
                          Text(LocaleKeys.alive.tr(), style: theme.titleLarge),
                      value: FilterStatus.alive,
                      groupValue: selectedStatus,
                      onChanged: (newValue) =>
                          selectedStatus = newValue ?? FilterStatus.unknown,
                    ),
                    RadioListTile<FilterStatus>(
                      contentPadding: const EdgeInsets.all(0),
                      title:
                          Text(LocaleKeys.dead.tr(), style: theme.titleLarge),
                      value: FilterStatus.dead,
                      groupValue: selectedStatus,
                      onChanged: (newValue) =>
                          selectedStatus = newValue ?? FilterStatus.unknown,
                    ),
                    RadioListTile<FilterStatus>(
                      contentPadding: const EdgeInsets.all(0),
                      title:
                          Text(LocaleKeys.unknow.tr(), style: theme.titleLarge),
                      value: FilterStatus.unknown,
                      groupValue: selectedStatus,
                      onChanged: (newValue) =>
                          selectedStatus = newValue ?? FilterStatus.unknown,
                    ),
                  ],
                ),
                const DividerLine(),
                Text(
                  LocaleKeys.gender.tr(),
                  style: theme.bodySmall?.copyWith(color: AppColors.textGray),
                ),
                const SizedBox(height: 8),
                Column(
                  children: [
                    RadioListTile<FilterGender>(
                      contentPadding: const EdgeInsets.all(0),
                      title:
                          Text(LocaleKeys.male_g.tr(), style: theme.titleLarge),
                      value: FilterGender.male,
                      groupValue: selectedGender,
                      onChanged: (newValue) =>
                          selectedGender = newValue ?? FilterGender.unknown,
                    ),
                    RadioListTile<FilterGender>(
                      contentPadding: const EdgeInsets.all(0),
                      title: Text(LocaleKeys.female_g.tr(),
                          style: theme.titleLarge),
                      value: FilterGender.female,
                      groupValue: selectedGender,
                      onChanged: (newValue) =>
                          selectedGender = newValue ?? FilterGender.unknown,
                    ),
                    RadioListTile<FilterGender>(
                      contentPadding: const EdgeInsets.all(0),
                      title:
                          Text(LocaleKeys.unknow.tr(), style: theme.titleLarge),
                      value: FilterGender.unknown,
                      groupValue: selectedGender,
                      onChanged: (newValue) =>
                          selectedGender = newValue ?? FilterGender.unknown,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<CharactersBloc>().add(
              FetchCharacters(
                status: selectedStatus,
                gender: selectedGender,
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
