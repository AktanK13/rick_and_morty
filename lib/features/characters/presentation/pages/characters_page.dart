import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/presentation/bloc/characters_bloc.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/character_paged_grid_view.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/character_paged_list_view.dart';
import 'package:rick_and_morty/shared/widgets/search_appbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CharactersPage extends StatefulWidget {
  const CharactersPage({super.key});

  @override
  State<CharactersPage> createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {
  final PagingController<int, CharactersEntity> _pagingController =
      PagingController(firstPageKey: 1);

  int _count = 0;
  bool _isGridView = false;

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((pageKey) {
      context.read<CharactersBloc>().add(FetchCharacters(
            page: pageKey,
          ));
    });
    _getCount();
  }

  Future<void> _refreshPage() async {
    _pagingController.refresh();
  }

  Future<void> _getCount() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _count = prefs.getInt(AppConsts.count) ?? 0;
    });
  }

  @override
  void dispose() {
    _pagingController.dispose();
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
                    final isLastPage =
                        state.characters.length < AppConsts.pageSize;
                    if (isLastPage) {
                      _pagingController.appendLastPage(state.characters);
                    } else {
                      final nextPageKey =
                          (_pagingController.nextPageKey ?? 1) + 1;
                      _pagingController.appendPage(
                          state.characters, nextPageKey);
                    }
                  } else if (state is CharactersError) {
                    _pagingController.error = state.message;
                  }
                },
                child: RefreshIndicator(
                    onRefresh: _refreshPage,
                    child: _isGridView
                        ? CharacterPagedGridView(
                            pagingController: _pagingController)
                        : CharacterPagedListView(
                            pagingController: _pagingController)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
