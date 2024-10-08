import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/utils/injections.dart';
import 'package:rick_and_morty/features/characters/domain/entities/entities.dart';
import 'package:rick_and_morty/features/characters/presentation/bloc/characters_bloc.dart';
import 'package:rick_and_morty/features/characters/presentation/pages/sub_pages/characters_detail_page.dart';
import 'package:rick_and_morty/features/characters/presentation/pages/sub_pages/characters_filter_page.dart';
import 'package:rick_and_morty/features/characters/presentation/pages/characters_page.dart';
import 'package:rick_and_morty/features/characters/presentation/pages/sub_pages/characters_search_page.dart';
import 'package:rick_and_morty/features/episodes/domain/entities/episodes_entity.dart';
import 'package:rick_and_morty/features/episodes/presentation/pages/sub_pages/episode_detail_page.dart';
import 'package:rick_and_morty/features/episodes/presentation/pages/episodes_page.dart';
import 'package:rick_and_morty/features/locations/domain/entities/location_entity.dart';
import 'package:rick_and_morty/features/locations/presentation/pages/sub_pages/location_details_page.dart';
import 'package:rick_and_morty/features/locations/presentation/pages/locations_page.dart';
import 'package:rick_and_morty/features/settings/presentation/pages/settings_page.dart';
import 'package:rick_and_morty/shared/pages/home/home_page.dart';

final router = GoRouter(
  initialLocation: '/characters',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        final currentRoute = state.fullPath ?? '';
        return HomePage(
          navigationShell: navigationShell,
          currentRoute: currentRoute,
        );
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/characters',
              builder: (context, state) => BlocProvider(
                create: (context) => getIt<CharactersBloc>()
                  ..add(const FetchCharacters(status: '', gender: '')),
                child: const CharactersPage(),
              ),
              routes: [
                GoRoute(
                  path: 'details',
                  builder: (BuildContext context, GoRouterState state) {
                    final CharactersEntity character =
                        GoRouterState.of(context).extra as CharactersEntity;
                    return CharactersDetailPage(
                      character: character,
                    );
                  },
                ),
                GoRoute(
                  path: 'search',
                  builder: (BuildContext context, GoRouterState state) {
                    return BlocProvider(
                      create: (context) => getIt<CharactersBloc>(),
                      child: const CharactersSearchPage(),
                    );
                  },
                ),
                GoRoute(
                  path: 'filter',
                  builder: (BuildContext context, GoRouterState state) {
                    final Map<String, String> extra =
                        GoRouterState.of(context).extra as Map<String, String>;
                    return CharactersFilterPage(
                      extra: extra,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/locations',
              builder: (context, state) => const LocationsPage(),
              routes: [
                GoRoute(
                  path: 'details',
                  builder: (BuildContext context, GoRouterState state) {
                    final LocationEntity location =
                        GoRouterState.of(context).extra as LocationEntity;
                    return LocationDetailsPage(
                      location: location,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/episodes',
              builder: (context, state) => const EpisodesPage(),
              routes: [
                GoRoute(
                  path: 'details',
                  builder: (BuildContext context, GoRouterState state) {
                    final EpisodesEntity episode =
                        GoRouterState.of(context).extra as EpisodesEntity;
                    return EpisodeDetailPage(
                      episode: episode,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/settings',
              builder: (context, state) => const SettingsPage(),
            )
          ],
        )
      ],
    ),
  ],
);
