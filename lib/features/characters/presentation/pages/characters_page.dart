import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/features/characters/presentation/bloc/characters_bloc.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/character_paged_grid_view.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/character_paged_list_view.dart';
import 'package:rick_and_morty/generated/locale_keys.g.dart';
import 'package:rick_and_morty/shared/pages/not_found.dart';
import 'package:rick_and_morty/shared/widgets/search_appbar.dart';

class CharactersPage extends StatefulWidget {
  const CharactersPage({super.key});

  @override
  State<CharactersPage> createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {
  bool _isGridView = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: const SearchAppbar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: BlocBuilder<CharactersBloc, CharactersState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        loading: () => Text(
                          LocaleKeys.total_characters.tr(),
                          style: theme.bodySmall
                              ?.copyWith(color: AppColors.textGray),
                        ),
                        error: (_) => Text(
                          LocaleKeys.total_characters.tr(),
                          style: theme.bodySmall
                              ?.copyWith(color: AppColors.textGray),
                        ),
                        loaded: (characters, hasReachMax, count) => Text(
                          '${LocaleKeys.total_characters.tr()}$count',
                          style: theme.bodySmall
                              ?.copyWith(color: AppColors.textGray),
                        ),
                        orElse: () => const SizedBox.shrink(),
                      );
                    },
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _isGridView = !_isGridView;
                    });
                  },
                  icon: _isGridView
                      ? const Icon(Icons.list_rounded,
                          size: 24, color: AppColors.textGray)
                      : const Icon(Icons.grid_view_rounded,
                          size: 24, color: AppColors.textGray),
                ),
              ],
            ),
          ),
          Expanded(
            child: BlocBuilder<CharactersBloc, CharactersState>(
              builder: (context, state) {
                final bloc = context.read<CharactersBloc>();
                return state.maybeWhen(
                  initial: () => const SizedBox.shrink(),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (error) => const NotFound(),
                  loaded: (characters, hasReachedMax, count) {
                    return RefreshIndicator(
                      onRefresh: () => bloc.refreshPage(),
                      child: _isGridView
                          ? CharacterPagedGridView(
                              scrollController: bloc.scrollController,
                              characters: characters,
                              hasReachedMax: hasReachedMax,
                            )
                          : CharacterPagedListView(
                              scrollController: bloc.scrollController,
                              characters: characters,
                              hasReachedMax: hasReachedMax,
                            ),
                    );
                  },
                  orElse: () => const SizedBox.shrink(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
