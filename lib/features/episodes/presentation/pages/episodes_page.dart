import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/utils/injections.dart';
import 'package:rick_and_morty/features/episodes/presentation/bloc/episodes_bloc.dart';
import 'package:rick_and_morty/features/episodes/presentation/pages/sub_pages/episodes_list_view.dart';
import 'package:rick_and_morty/generated/locale_keys.g.dart';
import 'package:rick_and_morty/shared/pages/no_data.dart';

class EpisodesPage extends StatelessWidget {
  const EpisodesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EpisodesBloc>()..add(const FetchEpisodes()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            LocaleKeys.episodes.tr(),
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
                    return state.maybeWhen(
                      initial: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      loaded: (episodes, hasReachedMax) {
                        return EpisodeListView(
                          episodes: episodes,
                          hasReachedMax: hasReachedMax,
                        );
                      },
                      orElse: () => const NoData(),
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
