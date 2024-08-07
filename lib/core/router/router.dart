import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/features/characters/presentation/pages/characters_page.dart';
import 'package:rick_and_morty/features/episodes/presentation/pages/episodes_page.dart';
import 'package:rick_and_morty/features/locations/presentation/pages/locations_page.dart';
import 'package:rick_and_morty/features/settings/presentation/pages/settings_page.dart';
import 'package:rick_and_morty/shared/pages/home/home_page.dart';

final router = GoRouter(
  initialLocation: '/characters',
  routes: [
    // BottomNavigationBar
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          HomePage(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/characters',
              builder: (context, state) => const CharactersPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/locations',
              builder: (context, state) => const LocationsPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/episodes',
              builder: (context, state) => const EpisodesPage(),
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
