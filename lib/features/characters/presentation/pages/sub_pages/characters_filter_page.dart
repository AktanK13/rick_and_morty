import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/features/characters/presentation/bloc/characters_bloc.dart';

import 'package:rick_and_morty/shared/widgets/divider_line.dart';

class CharactersFilterPage extends StatefulWidget {
  const CharactersFilterPage({
    super.key,
  });

  @override
  State<CharactersFilterPage> createState() => _CharactersFilterPageState();
}

class _CharactersFilterPageState extends State<CharactersFilterPage> {
  String selectedStatus = '';
  String selectedGender = '';

  @override
  void initState() {
    super.initState();
    selectedStatus = context.read<CharactersBloc>().selectedStatus;
    selectedGender = context.read<CharactersBloc>().selectedGender;
  }

  void _resetFilters() {
    setState(() {
      selectedStatus = '';
      selectedGender = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).inputDecorationTheme.fillColor,
          title: Text(
            'Фильтры',
            style: Theme.of(context).textTheme.titleMedium,
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
                  'Сортировать',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: AppColors.textGray),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      'По алфавиту ',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const Spacer(),
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
                  'Статус',
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
                    'Живой',
                    style: Theme.of(context).textTheme.titleLarge,
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
                    'Мёртвый',
                    style: Theme.of(context).textTheme.titleLarge,
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
                    'Неизвестно',
                    style: Theme.of(context).textTheme.titleLarge,
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
                    'Мужской',
                    style: Theme.of(context).textTheme.titleLarge,
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
                    'Женский',
                    style: Theme.of(context).textTheme.titleLarge,
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
                    'Неизвестно',
                    style: Theme.of(context).textTheme.titleLarge,
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
            context.read<CharactersBloc>().add(FetchCharacters(
                status: selectedStatus, gender: selectedGender));
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
