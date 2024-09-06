import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/features/characters/presentation/bloc/characters_bloc.dart';
import 'package:rick_and_morty/features/characters/presentation/pages/sub_pages/characters_header.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/character_paged_grid_view.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/character_paged_list_view.dart';
import 'package:rick_and_morty/shared/pages/no_data.dart';
import 'package:rick_and_morty/shared/widgets/search_appbar.dart';

class CharactersPage extends StatelessWidget {
  const CharactersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SearchAppbar(),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 16),
            child: CharactersHeader(),
          ),
          Expanded(
            child: BlocBuilder<CharactersBloc, CharactersState>(
              builder: (context, state) {
                final bloc = context.read<CharactersBloc>();
                return state.maybeWhen(
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (error) => const NoData(),
                  loaded: (characters, hasReachedMax, count, isGridView, status, gender) {
                    return RefreshIndicator(
                      onRefresh: () => bloc.refreshPage(),
                      child: isGridView
                          ? CharacterPagedGridView(
                              scrollController:
                                  bloc.useCases.pagination.scrollController,
                              characters: characters,
                            )
                          : CharacterPagedListView(
                              scrollController:
                                  bloc.useCases.pagination.scrollController,
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
