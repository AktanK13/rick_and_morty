import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/styles/app_font_size.dart';

import 'app_colors.dart';

ThemeData getAppTheme(BuildContext context, isDarkTheme) {
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
          fontSize: AppFontSize.medium,
          color: isDarkTheme ? AppColors.textWhite : AppColors.textBlack),
      labelMedium: TextStyle(
          fontSize: AppFontSize.large,
          color: isDarkTheme ? AppColors.textWhite : AppColors.textBlack),
      labelLarge: TextStyle(
          fontSize: AppFontSize.xLarge,
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
      iconColor: isDarkTheme ? AppColors.backgroundWhite : AppColors.textBlack,
      leadingAndTrailingTextStyle: TextStyle(
        color: isDarkTheme ? AppColors.backgroundWhite : AppColors.textBlack,
      ),
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

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Roboto',
    scaffoldBackgroundColor: AppColors.backgroundWhite,
    textTheme: const TextTheme().copyWith(
      bodySmall: const TextStyle(color: AppColors.textBlack),
      bodyMedium: const TextStyle(color: AppColors.textBlack),
      bodyLarge: const TextStyle(color: AppColors.textBlack),
      labelSmall: const TextStyle(
        color: AppColors.textBlack,
        fontSize: AppFontSize.medium,
      ),
      labelMedium: const TextStyle(
        color: AppColors.textBlack,
        fontSize: AppFontSize.large,
      ),
      labelLarge: const TextStyle(
        color: AppColors.textBlack,
        fontSize: AppFontSize.xLarge,
      ),
      displaySmall: const TextStyle(color: AppColors.textBlack),
      displayMedium: const TextStyle(color: AppColors.textBlack),
      displayLarge: const TextStyle(color: AppColors.textBlack),
    ),
    iconTheme: const IconThemeData(
      color: AppColors.buttonActive,
    ),
    searchBarTheme: SearchBarThemeData(
      backgroundColor: WidgetStateProperty.all(
        AppColors.searchBackgroundWhite,
      ),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.all(
        AppColors.buttonActive,
      ),
    ),
    listTileTheme: const ListTileThemeData(
      iconColor: AppColors.textBlack,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.backgroundWhite,
      titleTextStyle: TextStyle(
        color: AppColors.textBlack,
      ),
      iconTheme: IconThemeData(
        color: AppColors.textBlack,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 10,
      backgroundColor: AppColors.navBarBackgroundWhite,
      selectedItemColor: AppColors.buttonActive,
      unselectedItemColor: AppColors.buttonDisabled,
      selectedLabelStyle: TextStyle(fontSize: AppFontSize.xSmall),
      unselectedLabelStyle: TextStyle(
        color: AppColors.buttonDisabled,
        fontSize: AppFontSize.xSmall,
      ),
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    fontFamily: 'Roboto',
    scaffoldBackgroundColor: AppColors.backgroundDark,
    textTheme: const TextTheme().copyWith(
      bodySmall: const TextStyle(color: AppColors.textWhite),
      bodyMedium: const TextStyle(color: AppColors.textWhite),
      bodyLarge: const TextStyle(color: AppColors.textWhite),
      labelSmall: const TextStyle(color: AppColors.textWhite),
      labelMedium: const TextStyle(color: AppColors.textWhite),
      labelLarge: const TextStyle(color: AppColors.textWhite),
      displaySmall: const TextStyle(color: AppColors.textWhite),
      displayMedium: const TextStyle(color: AppColors.textWhite),
      displayLarge: const TextStyle(color: AppColors.textWhite),
      headlineLarge: const TextStyle(color: AppColors.textWhite),
      headlineSmall: const TextStyle(color: AppColors.textWhite),
      headlineMedium: const TextStyle(color: AppColors.textWhite),
      titleLarge: const TextStyle(color: AppColors.textWhite),
      titleMedium: const TextStyle(color: AppColors.textWhite),
      titleSmall: const TextStyle(color: AppColors.textWhite),
    ),
    unselectedWidgetColor: AppColors.textGray,
    iconTheme: const IconThemeData(color: AppColors.statusAlive),
    searchBarTheme: SearchBarThemeData(
      backgroundColor: WidgetStateProperty.all(
        AppColors.searchBackgroundDark,
      ),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.all(
        AppColors.buttonActive,
      ),
    ),
    listTileTheme: const ListTileThemeData(
      iconColor: AppColors.textWhite,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.backgroundDark,
      titleTextStyle: TextStyle(
        color: AppColors.textWhite,
      ),
      iconTheme: IconThemeData(
        color: AppColors.textWhite,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 10,
      backgroundColor: AppColors.navBarBackgroundBlack,
      selectedItemColor: AppColors.statusAlive,
      unselectedItemColor: AppColors.darkGray,
      selectedLabelStyle: TextStyle(fontSize: AppFontSize.xSmall),
      unselectedLabelStyle: TextStyle(
        color: AppColors.darkGray,
        fontSize: AppFontSize.xSmall,
      ),
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),
  );
}
