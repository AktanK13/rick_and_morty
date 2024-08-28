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
  String selectedStatus = '';
  String selectedGender = '';

  @override
  void initState() {
    super.initState();
    selectedStatus = widget.extra["status"] ?? '';
    selectedGender = widget.extra["gender"] ?? '';
  }

  void _resetFilters() {
    //TODO: add bloc or cubit to filter and remove setState
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
              icon: const Icon(Icons.arrow_back_ios), onPressed: context.pop),
          centerTitle: false,
          actions: [
            IconButton(
              icon: Icon(
                Icons.filter_alt_off,
                color: selectedStatus == Status.unknown.toString() &&
                        selectedGender == Gender.unknown.toString()
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
                  value: Status.alive.toString(),
                  groupValue: selectedStatus,
                  onChanged: (value) {
                    setState(() {
                      selectedStatus = value ?? Status.alive.toString();
                    });
                  },
                ),
                RadioListTile<String>(
                  contentPadding: const EdgeInsets.all(0),
                  title: Text(
                    LocaleKeys.dead.tr(),
                    style: theme.titleLarge,
                  ),
                  value: Status.dead.toString(),
                  groupValue: selectedStatus,
                  onChanged: (value) {
                    setState(() {
                      selectedStatus = value ?? Status.dead.toString();
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
                  LocaleKeys.gender.tr(),
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
                  //TODO: add enum
                  value: Gender.male.toString(),
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value ?? Gender.male.toString();
                    });
                  },
                ),
                RadioListTile<String>(
                  contentPadding: const EdgeInsets.all(0),
                  title: Text(
                    LocaleKeys.female_g.tr(),
                    style: theme.titleLarge,
                  ),
                  value: Gender.female.toString(),
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value ?? Gender.female.toString();
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
