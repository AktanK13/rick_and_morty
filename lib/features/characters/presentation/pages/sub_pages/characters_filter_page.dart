import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/generated/locale_keys.g.dart';

import 'package:rick_and_morty/shared/widgets/divider_line.dart';

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
  String selectedStatus = '';
  String selectedGender = '';

  @override
  void initState() {
    super.initState();
    selectedStatus = widget.extra["status"] ?? '';
    selectedGender = widget.extra["gender"] ?? '';
  }

  void _resetFilters() {
    setState(() {
      selectedStatus = '';
      selectedGender = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).inputDecorationTheme.fillColor,
          title: Text(
            LocaleKeys.filter.tr(),
            style: theme.titleMedium,
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              context.pop();
            },
          ),
          centerTitle: false,
          actions: [
            IconButton(
              icon: Icon(
                Icons.filter_alt_off,
                color: selectedStatus == "" && selectedGender == ""
                    ? AppColors.buttonDisabled
                    : AppColors.statusDead,
              ),
              onPressed: _resetFilters,
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
                  LocaleKeys.sorting.tr(),
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: AppColors.textGray),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        LocaleKeys.abc.tr(),
                        style: theme.titleLarge,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.sort_outlined),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Transform.flip(
                        flipY: true,
                        child: const Icon(
                          Icons.sort_outlined,
                          color: AppColors.buttonDisabled,
                        ),
                      ),
                    ),
                  ],
                ),
                const DividerLine(),
                Text(
                  LocaleKeys.status.tr(),
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: AppColors.textGray),
                ),
                const SizedBox(height: 8),
                RadioListTile<String>(
                  contentPadding: const EdgeInsets.all(0),
                  title: Text(
                    LocaleKeys.alive.tr(),
                    style: theme.titleLarge,
                  ),
                  value: 'alive',
                  groupValue: selectedStatus,
                  onChanged: (value) {
                    setState(() {
                      selectedStatus = value ?? 'alive';
                    });
                  },
                ),
                RadioListTile<String>(
                  contentPadding: const EdgeInsets.all(0),
                  title: Text(
                    LocaleKeys.dead.tr(),
                    style: theme.titleLarge,
                  ),
                  value: 'dead',
                  groupValue: selectedStatus,
                  onChanged: (value) {
                    setState(() {
                      selectedStatus = value ?? 'dead';
                    });
                  },
                ),
                RadioListTile<String>(
                  contentPadding: const EdgeInsets.all(0),
                  title: Text(
                    LocaleKeys.unknow.tr(),
                    style: theme.titleLarge,
                  ),
                  value: '',
                  groupValue: selectedStatus,
                  onChanged: (value) {
                    setState(() {
                      selectedStatus = value ?? '';
                    });
                  },
                ),
                const DividerLine(),
                Text(
                  'Пол',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: AppColors.textGray),
                ),
                const SizedBox(
                  height: 8,
                ),
                RadioListTile<String>(
                  contentPadding: const EdgeInsets.all(0),
                  title: Text(
                    LocaleKeys.male_g.tr(),
                    style: theme.titleLarge,
                  ),
                  value: 'male',
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value ?? 'male';
                    });
                  },
                ),
                RadioListTile<String>(
                  contentPadding: const EdgeInsets.all(0),
                  title: Text(
                    LocaleKeys.female_g.tr(),
                    style: theme.titleLarge,
                  ),
                  value: 'female',
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value ?? 'female';
                    });
                  },
                ),
                RadioListTile<String>(
                  contentPadding: const EdgeInsets.all(0),
                  title: Text(
                    LocaleKeys.unknow.tr(),
                    style: theme.titleLarge,
                  ),
                  value: '',
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value ?? '';
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.pop({
              'status': selectedStatus,
              'gender': selectedGender,
            });
          },
          child: const Icon(Icons.check),
        ),
      ),
    );
  }
}
