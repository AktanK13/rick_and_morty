import 'dart:collection';
import 'dart:developer';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
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
  bool isEmpty = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      setState(() {
        _loadCharacters(query);
      });
    });
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent &&
        !context.read<CharactersBloc>().hasReachedMax) {
      _loadCharacters(_searchController.text);
    }
  }

  void _loadCharacters(String query) {
    if (query.isNotEmpty) {
      isEmpty = false;
      context.read<CharactersBloc>().add(SearchCharacters(
            page: context.read<CharactersBloc>().searchCurrentPage,
            name: query,
          ));
    } else {
      isEmpty = true;
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
            autofocus: true,
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
            child: BlocBuilder<CharactersBloc, CharactersState>(
              buildWhen: (previous, current) =>
                  current is SearchCharactersLoadSuccess ||
                  current is SearchCharactersLoading,
              builder: (context, state) {
                if (state is SearchCharactersLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (state is SearchCharactersLoadSuccess) {
                  return isEmpty
                      ? const SizedBox()
                      : Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: SearchListView(
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
    );
  }
}
