import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/styles/app_font_size.dart';
import 'package:rick_and_morty/core/utils/injections.dart';
import 'package:rick_and_morty/core/utils/shared_preferences_service.dart';

import 'app_colors.dart';

ThemeData getAppTheme(BuildContext context, isDarkTheme) {
  log('data-unique: sharedPref: ${isDarkTheme} ');
  return ThemeData(
    fontFamily: 'Roboto',
    scaffoldBackgroundColor:
        isDarkTheme ? AppColors.backgroundDark : AppColors.backgroundWhite,
    textTheme: const TextTheme().copyWith(
      bodySmall: TextStyle(
          color: isDarkTheme ? AppColors.textWhite : AppColors.textBlack),
      bodyMedium: TextStyle(
          color: isDarkTheme ? AppColors.textWhite : AppColors.textBlack),
      bodyLarge: TextStyle(
          color: isDarkTheme ? AppColors.textWhite : AppColors.textBlack),
      labelSmall: TextStyle(
          color: isDarkTheme ? AppColors.textWhite : AppColors.textBlack),
      labelMedium: TextStyle(
          color: isDarkTheme ? AppColors.textWhite : AppColors.textBlack),
      labelLarge: TextStyle(
          color: isDarkTheme ? AppColors.textWhite : AppColors.textBlack),
      displaySmall: TextStyle(
          color: isDarkTheme ? AppColors.textWhite : AppColors.textBlack),
      displayMedium: TextStyle(
          color: isDarkTheme ? AppColors.textWhite : AppColors.textBlack),
      displayLarge: TextStyle(
          color: isDarkTheme ? AppColors.textWhite : AppColors.textBlack),
    ),
    searchBarTheme: SearchBarThemeData(
      backgroundColor: WidgetStateProperty.all(
        isDarkTheme
            ? AppColors.searchBackgroundDark
            : AppColors.searchBackgroundWhite,
      ),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.all(
        isDarkTheme ? AppColors.buttonActive : AppColors.buttonActive,
      ),
    ),
    listTileTheme: ListTileThemeData(
      iconColor: isDarkTheme ? AppColors.buttonActive : AppColors.buttonActive,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor:
          isDarkTheme ? AppColors.backgroundDark : AppColors.backgroundWhite,
      titleTextStyle: TextStyle(
        color: isDarkTheme ? AppColors.textWhite : AppColors.textBlack,
      ),
      iconTheme: IconThemeData(
        color: isDarkTheme ? AppColors.textWhite : AppColors.textBlack,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 10,
      backgroundColor: isDarkTheme
          ? AppColors.navBarBackgroundBlack
          : AppColors.navBarBackgroundWhite,
      selectedItemColor:
          isDarkTheme ? AppColors.statusAlive : AppColors.buttonActive,
      unselectedItemColor:
          isDarkTheme ? AppColors.darkGray : AppColors.buttonDisabled,
      selectedLabelStyle: const TextStyle(fontSize: AppFontSize.xSmall),
      unselectedLabelStyle: TextStyle(
        color: isDarkTheme ? AppColors.darkGray : AppColors.buttonDisabled,
        fontSize: AppFontSize.xSmall,
      ),
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),
  );
}
