import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/features/characters/presentation/bloc/characters_bloc.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/character_paged_grid_view.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/character_paged_list_view.dart';
import 'package:rick_and_morty/shared/pages/not_found.dart';
import 'package:rick_and_morty/shared/widgets/search_appbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CharactersPage extends StatefulWidget {
  const CharactersPage({super.key});

  @override
  State<CharactersPage> createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {
  final ScrollController _scrollController = ScrollController();
  bool _isGridView = false;

  @override
  void initState() {
    super.initState();
    context.read<CharactersBloc>().add(const FetchCharacters(
          page: 1,
        ));

    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent &&
        !context.read<CharactersBloc>().hasReachedMax) {
      context.read<CharactersBloc>().add(
          FetchCharacters(page: context.read<CharactersBloc>().currentPage));
    }
  }

  Future<void> _refreshPage() async {
    context.read<CharactersBloc>().add(const FetchCharacters(
          page: 1,
        ));
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SearchAppbar(),
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Всего персонажей: ',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: AppColors.textGray),
                      ),
                      BlocBuilder<CharactersBloc, CharactersState>(
                        builder: (context, state) {
                          if (state is CharactersLoadSuccess) {
                            return Text(
                              '${state.count}',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(color: AppColors.textGray),
                            );
                          }
                          return const Text('');
                        },
                      )
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _isGridView = !_isGridView;
                      });
                    },
                    icon: _isGridView
                        ? const Icon(Icons.list_rounded,
                            color: AppColors.textGray)
                        : const Icon(Icons.grid_view_rounded,
                            color: AppColors.textGray),
                  ),
                ],
              ),
            ),
            Expanded(
              child: BlocBuilder<CharactersBloc, CharactersState>(
                builder: (context, state) {
                  if (state is CharactersLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state is CharactersLoadSuccess) {
                    return RefreshIndicator(
                      onRefresh: _refreshPage,
                      child: _isGridView
                          ? CharacterPagedGridView(
                              scrollController: _scrollController,
                              characters: state.characters,
                              isLoading: state.hasReachedMax,
                            )
                          : CharacterPagedListView(
                              scrollController: _scrollController,
                              characters: state.characters,
                              isLoading: state.hasReachedMax,
                            ),
                    );
                  }
                  return const NotFound();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
