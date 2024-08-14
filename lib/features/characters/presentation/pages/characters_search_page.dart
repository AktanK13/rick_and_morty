import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/presentation/bloc/characters_bloc.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/search_list_view.dart';
import 'package:rick_and_morty/shared/pages/not_found.dart';

class CharactersSearchPage extends StatefulWidget {
  const CharactersSearchPage({super.key});

  @override
  State<CharactersSearchPage> createState() => _CharactersSearchPageState();
}

class _CharactersSearchPageState extends State<CharactersSearchPage> {
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  Timer? _debounce;

  List<CharactersEntity> _characters = [];
  bool _isLoading = false;
  bool _hasMore = true;
  bool _isEmpty = false;
  int _currentPage = 1;

  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      setState(() {
        _characters.clear();
        _currentPage = 1;
        _hasMore = true;
        _isEmpty = false;
      });
      _loadCharacters(query);
    });
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _loadCharacters(String query) {
    if (_isLoading || !_hasMore) return;

    setState(() {
      _isLoading = true;
    });
    context
        .read<CharactersBloc>()
        .add(SearchCharacters(page: _currentPage, name: query));
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent &&
        _hasMore &&
        !_isLoading) {
      _loadCharacters(_searchController.text);
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    InputDecorationTheme textfieldTheme =
        Theme.of(context).inputDecorationTheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const SizedBox(),
        leadingWidth: 0,
        titleSpacing: 0,
        title: Hero(
          tag: 'searchField',
          child: TextField(
            onChanged: _onSearchChanged,
            controller: _searchController,
            style: Theme.of(context).textTheme.bodyMedium,
            onTapOutside: (event) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            decoration: InputDecoration(
              fillColor: textfieldTheme.fillColor,
              hintText: 'Найти персонажа',
              hintStyle: textfieldTheme.hintStyle,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0),
                borderSide: BorderSide.none,
              ),
              prefixIcon: GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: const Icon(Icons.arrow_back_ios),
              ),
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _searchController.clear();
                    _onSearchChanged('');
                  });
                },
                child: const Icon(Icons.close),
              ),
              iconColor: textfieldTheme.iconColor,
              suffixIconColor: textfieldTheme.suffixIconColor,
              prefixIconColor: textfieldTheme.prefixIconColor,
              contentPadding: textfieldTheme.contentPadding,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Результаты поиска",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: AppColors.textGray),
            ),
          ),
          Expanded(
            child: BlocListener<CharactersBloc, CharactersState>(
              listener: (context, state) {
                if (state is SearchCharactersLoadSuccess) {
                  setState(() {
                    _characters.addAll(state.characters);
                    _isLoading = false;
                    _hasMore = state.characters.length == AppConsts.pageSize;
                    _currentPage++;
                    if (_characters.isEmpty) {
                      _isEmpty = true;
                    }
                  });
                } else if (state is CharactersError) {
                  setState(() {
                    _isLoading = false;
                    _hasMore = false;
                    if (_characters.isEmpty) {
                      _isEmpty = true;
                    }
                  });
                }
              },
              child: _isEmpty
                  ? const NotFound()
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: SearchListView(
                        scrollController: _scrollController,
                        characters: _characters,
                        isLoading: _isLoading,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
