import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/router/app_router.dart';
import 'package:rick_and_morty/core/utils/sized_box_helper.dart';
import 'package:rick_and_morty/features/episodes/domain/entities/episodes_entity.dart';
import 'package:rick_and_morty/features/episodes/presentation/bloc/episodes_bloc.dart';
import 'package:rick_and_morty/shared/pages/not_found.dart';

class EpisodesPage extends StatefulWidget {
  const EpisodesPage({super.key});

  @override
  State<EpisodesPage> createState() => _EpisodesPageState();
}

class _EpisodesPageState extends State<EpisodesPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<EpisodesBloc>().add(const FetchEpisodes(
          page: 1,
        ));
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent &&
        !context.read<EpisodesBloc>().hasReachedMax) {
      context.read<EpisodesBloc>().add(FetchEpisodes(
            page: context.read<EpisodesBloc>().currentPage,
          ));
    }
  }

  Future<void> _refreshPage() async {
    context.read<EpisodesBloc>().add(const FetchEpisodes(
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
      appBar: AppBar(
        title: Text(
          "Эпизоды",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Expanded(
              child: BlocBuilder<EpisodesBloc, EpisodesState>(
                builder: (context, state) {
                  if (state is EpisodesLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state is EpisodesLoadSuccess) {
                    return RefreshIndicator(
                      onRefresh: _refreshPage,
                      child: ListView.separated(
                        controller: _scrollController,
                        itemCount: state.episodes.length +
                            (state.hasReachedMax ? 0 : 1),
                        separatorBuilder: (context, index) {
                          return addVerticalSpace(16);
                        },
                        itemBuilder: (context, index) {
                          if (index >= state.episodes.length) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }

                          final episode = state.episodes[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 5),
                            child: ListTile(
                              onTap: () {
                                context.go(AppRouter.episodesDetails,
                                    extra: episode);
                              },
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    episode.episode,
                                    style:
                                        Theme.of(context).textTheme.titleSmall,
                                  ),
                                  Text(
                                    episode.name,
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                ],
                              ),
                              subtitle: Text(
                                episode.airDate,
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .unselectedWidgetColor),
                              ),
                            ),
                          );
                        },
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
