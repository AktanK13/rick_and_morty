import 'dart:async';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/features/characters/presentation/bloc/characters_bloc.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/search_list_view.dart';
import 'package:rick_and_morty/generated/locale_keys.g.dart';
import 'package:rick_and_morty/shared/pages/not_found.dart';

class CharactersSearchPage extends StatefulWidget {
  const CharactersSearchPage({super.key});

  @override
  State<CharactersSearchPage> createState() => _CharactersSearchPageState();
}

class _CharactersSearchPageState extends State<CharactersSearchPage> {
  //TODO: remove Timer and switch to stateless
  Timer? _debounce;
  bool isEmpty = false;

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    InputDecorationTheme textfieldTheme =
        Theme.of(context).inputDecorationTheme;
    final theme = Theme.of(context).textTheme;
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
            controller: context.read<CharactersBloc>().textFieldController,
            onChanged: (String query) {
              if (_debounce?.isActive ?? false) _debounce?.cancel();
              _debounce = Timer(const Duration(milliseconds: 500), () {
                context
                    .read<CharactersBloc>()
                    .add(SearchCharacters(name: query));
              });
            },
            autofocus: true,
            style: theme.bodyMedium,
            onTapOutside: (event) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            decoration: InputDecoration(
              fillColor: textfieldTheme.fillColor,
              hintText: LocaleKeys.search_character.tr(),
              hintStyle: theme.titleLarge?.copyWith(color: AppColors.textGray),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0),
                borderSide: BorderSide.none,
              ),
              prefixIcon: GestureDetector(
                onTap: context.pop,
                child: const Icon(Icons.arrow_back_ios),
              ),
              suffixIcon: GestureDetector(
                onTap: () {
                  context.read<CharactersBloc>().textFieldController.clear();
                  context
                      .read<CharactersBloc>()
                      .add(const SearchCharacters(name: ""));
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
              LocaleKeys.search_result.tr(),
              style: theme.bodySmall?.copyWith(color: AppColors.textGray),
            ),
          ),
          Expanded(
            child: BlocBuilder<CharactersBloc, CharactersState>(
              builder: (context, state) {
                final bloc = context.read<CharactersBloc>();
                return state.maybeWhen(
                  //TODO: remove unuseless state
                  initial: () => const SizedBox.shrink(),
                  searchLoading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  searchError: (message) {
                    //TODO: remove string
                    return message.isEmpty
                        ? const SizedBox.shrink()
                        : const NotFound();
                  },
                  searchLoaded: (characters, hasReachedMax) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: SearchListView(
                        scrollController: bloc.searchScrollController,
                        characters: characters,
                        isLoading: hasReachedMax,
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
