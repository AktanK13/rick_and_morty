import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:rick_and_morty/core/images/images_consts.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.navigationShell,
    required this.currentRoute,
  });

  final StatefulNavigationShell navigationShell;
  final String currentRoute;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: currentRoute.startsWith('/characters/search') ||
              currentRoute.startsWith('/characters/details') ||
              currentRoute.startsWith('/locations/details') ||
              currentRoute.startsWith('/episodes/details')
          ? null
          : BottomNavigationBar(
              items: _buildBottomNavBarItems(context),
              currentIndex: navigationShell.currentIndex,
              onTap: (index) => navigationShell.goBranch(
                index,
                initialLocation: index == navigationShell.currentIndex,
              ),
            ),
    );
  }

  List<BottomNavigationBarItem> _buildBottomNavBarItems(BuildContext context) =>
      [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppSvg.characters,
            colorFilter: const ColorFilter.mode(
              AppColors.buttonDisabled,
              BlendMode.srcIn,
            ),
          ),
          activeIcon: SvgPicture.asset(
            AppSvg.characters,
            colorFilter: ColorFilter.mode(
              Theme.of(context).iconTheme.color!,
              BlendMode.srcIn,
            ),
          ),
          label: 'Персонажи',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppSvg.locations,
            colorFilter: const ColorFilter.mode(
              AppColors.buttonDisabled,
              BlendMode.srcIn,
            ),
          ),
          activeIcon: Consumer(
            builder: (context, ref, child) {
              return SvgPicture.asset(
                AppSvg.locations,
                colorFilter: ColorFilter.mode(
                  Theme.of(context).iconTheme.color!,
                  BlendMode.srcIn,
                ),
              );
            },
          ),
          label: 'Локациии',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppSvg.episodes,
            colorFilter: const ColorFilter.mode(
              AppColors.buttonDisabled,
              BlendMode.srcIn,
            ),
          ),
          activeIcon: Consumer(
            builder: (context, ref, child) {
              return SvgPicture.asset(
                AppSvg.episodes,
                colorFilter: ColorFilter.mode(
                  Theme.of(context).iconTheme.color!,
                  BlendMode.srcIn,
                ),
              );
            },
          ),
          label: 'Эпизоды ',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppSvg.settings,
            colorFilter: const ColorFilter.mode(
              AppColors.buttonDisabled,
              BlendMode.srcIn,
            ),
          ),
          activeIcon: Consumer(
            builder: (context, ref, child) {
              return SvgPicture.asset(
                AppSvg.settings,
                colorFilter: ColorFilter.mode(
                  Theme.of(context).iconTheme.color!,
                  BlendMode.srcIn,
                ),
              );
            },
          ),
          label: 'Настройки',
        )
      ];
}
