import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
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

  List<CharactersEntity> _characters = [];

  int _count = 0;
  int _currentPage = 1;
  bool _isGridView = false;
  bool _isLoading = false;
  bool _isLastPage = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
    _fetchCharacters(_currentPage);
    _getCount();
  }

  Future<void> _fetchCharacters(int page) async {
    if (_isLoading || _isLastPage) return;
    setState(() {
      _isLoading = true;
    });
    context.read<CharactersBloc>().add(FetchCharacters(page: page));
  }

  void _scrollListener() {
    if (_scrollController.position.extentAfter < 500 && !_isLoading) {
      _fetchCharacters(_currentPage + 1);
    }
  }

  Future<void> _refreshPage() async {
    setState(() {
      _characters.clear();
      _currentPage = 1;
      _isLastPage = false;
    });
    await _fetchCharacters(_currentPage);
  }

  Future<void> _getCount() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _count = prefs.getInt(AppConsts.count) ?? 0;
    });
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
                  Text(
                    'Всего персонажей: $_count',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: AppColors.textGray),
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
              child: BlocListener<CharactersBloc, CharactersState>(
                listener: (context, state) {
                  if (state is CharactersLoadSuccess) {
                    setState(() {
                      final fetchedCharacters = state.characters;
                      _characters.addAll(fetchedCharacters);
                      _isLastPage =
                          fetchedCharacters.length < AppConsts.pageSize;
                      _isLoading = false;
                      _currentPage++;
                    });
                  } else if (state is CharactersLoading && _isLoading) {
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is CharactersError) {
                    setState(() {
                      _isLoading = false;
                    });
                    const NotFound();
                  }
                },
                child: RefreshIndicator(
                  onRefresh: _refreshPage,
                  child: _isGridView
                      ? CharacterPagedGridView(
                          scrollController: _scrollController,
                          characters: _characters,
                          isLoading: _isLoading,
                        )
                      : CharacterPagedListView(
                          scrollController: _scrollController,
                          characters: _characters,
                          isLoading: _isLoading,
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
