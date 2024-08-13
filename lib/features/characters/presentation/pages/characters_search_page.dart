import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/router/app_router.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/core/styles/app_text_style.dart';
import 'package:rick_and_morty/core/utils/sized_box_helper.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/presentation/bloc/characters_bloc.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/detail_circle_avatar.dart';
import 'package:rick_and_morty/shared/pages/not_found.dart';
import 'package:rxdart/rxdart.dart';

class CharactersSearchPage extends StatefulWidget {
  const CharactersSearchPage({super.key});

  @override
  State<CharactersSearchPage> createState() => _CharactersSearchPageState();
}

class _CharactersSearchPageState extends State<CharactersSearchPage> {
  final _searchSubject = BehaviorSubject<String>();
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  List<CharactersEntity> _characters = [];
  bool _isLoading = false;
  bool _hasMore = true;
  bool _isEmpty = false;
  int _currentPage = 1;
  static const int _pageSize = 20;

  void _onSearchChanged(String query) {
    setState(() {
      _characters.clear();
      _currentPage = 1;
      _hasMore = true;
      _isEmpty = false;
    });
    _searchSubject.add(query);
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _searchSubject
        .debounceTime(const Duration(milliseconds: 500))
        .listen((query) {
      if (query.isNotEmpty) {
        _loadCharacters(query);
      } else {
        setState(() {
          _characters.clear();
          _hasMore = false;
          _isEmpty = true;
        });
      }
    });
  }

  void _loadCharacters(String query) {
    if (_isLoading || !_hasMore) return;

    setState(() {
      _isLoading = true;
    });

    // Отправляем событие в блок
    context
        .read<CharactersBloc>()
        .add(SearchCharacters(page: _currentPage, name: query));
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent &&
        _hasMore &&
        !_isLoading) {
      _loadCharacters(_searchSubject.valueOrNull ?? '');
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    _searchSubject.close();
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
                    _hasMore = state.characters.length == _pageSize;
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
                  : ListView.separated(
                      controller: _scrollController,
                      itemCount: _characters.length + (_isLoading ? 1 : 0),
                      separatorBuilder: (context, index) {
                        return addVerticalSpace(16);
                      },
                      itemBuilder: (context, index) {
                        if (index >= _characters.length) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }

                        final character = _characters[index];
                        return ListTile(
                          contentPadding: const EdgeInsets.all(0),
                          horizontalTitleGap: 0,
                          onTap: () {
                            context.go(AppRouter.charactersDetails,
                                extra: character);
                          },
                          leading: DetailCircleAvatar(
                            radius: 34.r,
                            imageurl: character.image,
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                character.status == 'Alive'
                                    ? 'Живой'
                                    : 'Мертвый',
                                style: AppTextStyle.xSmallBlack.copyWith(
                                  color: character.status == 'Alive'
                                      ? AppColors.statusAlive
                                      : AppColors.statusDead,
                                ),
                              ),
                              Text(
                                character.name,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                          subtitle: Text(
                            '${character.species}/${character.gender == 'Male' ? 'Мужской' : 'Женский'}',
                            style: TextStyle(
                                color: Theme.of(context).unselectedWidgetColor),
                          ),
                        );
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
