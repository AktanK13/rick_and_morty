import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/router/app_router.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/core/utils/injections.dart';
import 'package:rick_and_morty/features/episodes/presentation/bloc/episodes_bloc.dart';
import 'package:rick_and_morty/shared/pages/not_found.dart';

class EpisodesPage extends StatelessWidget {
  const EpisodesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EpisodesBloc>()..add(const FetchEpisodes()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Эпизоды",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Expanded(
                child: BlocBuilder<EpisodesBloc, EpisodesState>(
                  builder: (context, state) {
                    final bloc = context.read<EpisodesBloc>();
                    return state.when(
                      initial: () =>
                          const Center(child: CircularProgressIndicator()),
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                      error: (error) => const NotFound(),
                      loaded: (episodes, hasReachedMax) {
                        return RefreshIndicator(
                          onRefresh: () => bloc.refreshPage(),
                          child: ListView.separated(
                            controller: bloc.scrollController,
                            itemCount:
                                episodes.length + (hasReachedMax ? 0 : 1),
                            separatorBuilder: (context, index) {
                              return const SizedBox(
                                height: 16,
                              );
                            },
                            itemBuilder: (context, index) {
                              if (index >= episodes.length) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              }

                              final episode = episodes[index];
                              return ListTile(
                                contentPadding: const EdgeInsets.all(0),
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
                                          Theme.of(context).textTheme.bodySmall,
                                    ),
                                    Text(
                                      episode.name,
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                    ),
                                  ],
                                ),
                                subtitle: Text(
                                  episode.airDate,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.copyWith(color: AppColors.textGray),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
