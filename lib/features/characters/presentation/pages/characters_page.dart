import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/core/styles/app_text_style.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/presentation/bloc/characters_bloc.dart';
import 'package:rick_and_morty/shared/widgets/appbar_widget.dart';

class CharactersPage extends StatefulWidget {
  const CharactersPage({super.key});

  @override
  State<CharactersPage> createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {
  final PagingController<int, CharactersEntity> _pagingController =
      PagingController(firstPageKey: 1);

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((pageKey) {
      context.read<CharactersBloc>().add(FetchCharacters(
            page: pageKey,
          ));
    });
  }

  Future<void> _refreshPage() async {
    _pagingController.refresh();
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarWidget(),
      body: SafeArea(
        top: false,
        child: Column(
          children: [
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
                  child: PagedListView<int, CharactersEntity>(
                    pagingController: _pagingController,
                    builderDelegate:
                        PagedChildBuilderDelegate<CharactersEntity>(
                            itemBuilder: (context, character, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 5),
                        child: ListTile(
                          onTap: () {
                            context.go('/characters/details', extra: character);
                          },
                          leading: CircleAvatar(
                            radius: 35,
                            backgroundImage: NetworkImage(character.image),
                            backgroundColor: AppColors.buttonDisabled,
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
                        ),
                      );
                    }),
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
