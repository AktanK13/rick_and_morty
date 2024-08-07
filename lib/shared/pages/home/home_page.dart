import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/images/images_consts.dart';
import 'package:rick_and_morty/core/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        items: _buildBottomNavBarItems,
        currentIndex: navigationShell.currentIndex,
        onTap: (index) => navigationShell.goBranch(
          index,
          initialLocation: index == navigationShell.currentIndex,
        ),
      ),
    );
  }

  List<BottomNavigationBarItem> get _buildBottomNavBarItems => [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppSvg.characters,
            colorFilter: const ColorFilter.mode(
              AppColors.buttonDisabled,
              BlendMode.srcIn,
            ),
          ),
          activeIcon: Consumer(
            builder: (context, ref, child) {
              return SvgPicture.asset(
                AppSvg.characters,
                colorFilter: ColorFilter.mode(
                  ref.watch(appThemeProvider)
                      ? AppColors.statusAlive
                      : AppColors.buttonActive,
                  BlendMode.srcIn,
                ),
              );
            },
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
                  ref.watch(appThemeProvider)
                      ? AppColors.statusAlive
                      : AppColors.buttonActive,
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
                  ref.watch(appThemeProvider)
                      ? AppColors.statusAlive
                      : AppColors.buttonActive,
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
                  ref.watch(appThemeProvider)
                      ? AppColors.statusAlive
                      : AppColors.buttonActive,
                  BlendMode.srcIn,
                ),
              );
            },
          ),
          label: 'Настройки',
        )
      ];
}
