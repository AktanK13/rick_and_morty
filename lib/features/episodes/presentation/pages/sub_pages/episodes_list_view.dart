import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/router/app_router.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';
import 'package:rick_and_morty/features/episodes/domain/entities/episodes_entity.dart';
import 'package:rick_and_morty/features/episodes/presentation/bloc/episodes_bloc.dart';

class EpisodeListView extends StatelessWidget {
  const EpisodeListView({
    super.key,
    required this.episodes,
    required this.hasReachedMax,
  });
  final List<EpisodesEntity> episodes;
  final bool hasReachedMax;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<EpisodesBloc>();
    return RefreshIndicator(
      onRefresh: () => bloc.refreshPage(),
      child: ListView.separated(
        controller: bloc.scrollController,
        itemCount: episodes.length + (hasReachedMax ? 0 : 1),
        separatorBuilder: (context, index) {
          return const SizedBox(height: 16);
        },
        itemBuilder: (context, index) {
          if (index >= episodes.length) {
            return const Center(child: CircularProgressIndicator());
          }

          final episode = episodes[index];
          return ListTile(
            contentPadding: const EdgeInsets.all(0),
            onTap: () => context.go(AppRouter.episodesDetails, extra: episode),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  episode.episode,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  episode.name,
                  style: Theme.of(context).textTheme.bodyLarge,
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
  }
}
