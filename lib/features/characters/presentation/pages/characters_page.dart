import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/features/characters/presentation/bloc/characters_bloc.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/character_paged_grid_view.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/character_paged_list_view.dart';
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
                    buildWhen: (previous, current) =>
                        current is CharactersLoadSuccess ||
                        current is CharactersLoading ||
                        current is CharactersError,
                    builder: (context, state) {
                      if (state is CharactersLoadSuccess) {
                        return Text(
                          'Всего персонажей: ${state.count}',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: AppColors.textGray),
                        );
                      }
                      return const Text('');
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
              buildWhen: (previous, current) =>
                  current is CharactersLoadSuccess ||
                  current is CharactersLoading ||
                  current is CharactersError,
              builder: (context, state) {
                final bloc = context.read<CharactersBloc>();
                if (state is CharactersLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (state is CharactersLoadSuccess) {
                  return RefreshIndicator(
                    onRefresh: () => bloc.refreshPage(),
                    child: _isGridView
                        ? CharacterPagedGridView(
                            scrollController: bloc.scrollController,
                            characters: state.characters,
                            hasReachedMax: state.hasReachedMax,
                          )
                        : CharacterPagedListView(
                            scrollController: bloc.scrollController,
                            characters: state.characters,
                            hasReachedMax: state.hasReachedMax,
                          ),
                  );
                }
                if (state is CharactersError) {
                  return const NotFound();
                }
                return const NotFound();
              },
            ),
          ),
        ],
      ),
    );
  }
}
