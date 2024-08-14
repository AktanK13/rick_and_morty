import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/router/app_router.dart';
import 'package:rick_and_morty/features/episodes/domain/entities/episodes_entity.dart';
import 'package:rick_and_morty/features/episodes/presentation/bloc/episodes_bloc.dart';

class EpisodesPage extends StatefulWidget {
  const EpisodesPage({super.key});

  @override
  State<EpisodesPage> createState() => _EpisodesPageState();
}

class _EpisodesPageState extends State<EpisodesPage> {
  final PagingController<int, EpisodesEntity> _pagingController =
      PagingController(firstPageKey: 1);

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((pageKey) {
      context.read<EpisodesBloc>().add(FetchEpisodes(
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
      appBar: AppBar(
        title: Text(
          "Эпизоды",
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ),
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Expanded(
              child: BlocListener<EpisodesBloc, EpisodesState>(
                listener: (context, state) {
                  if (state is EpisodesLoadSuccess) {
                    final isLastPage =
                        state.episodes.length < AppConsts.pageSize;
                    if (isLastPage) {
                      _pagingController.appendLastPage(state.episodes);
                    } else {
                      final nextPageKey =
                          (_pagingController.nextPageKey ?? 1) + 1;
                      _pagingController.appendPage(state.episodes, nextPageKey);
                    }
                  } else if (state is EpisodesError) {
                    _pagingController.error = state.message;
                  }
                },
                child: RefreshIndicator(
                  onRefresh: _refreshPage,
                  child: PagedListView<int, EpisodesEntity>(
                    pagingController: _pagingController,
                    builderDelegate: PagedChildBuilderDelegate<EpisodesEntity>(
                        itemBuilder: (context, character, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 5),
                        child: ListTile(
                          onTap: () {
                            context.go(AppRouter.episodesDetails,
                                extra: character);
                          },
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                character.episode,
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              Text(
                                character.name,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                          subtitle: Text(
                            character.airDate,
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
