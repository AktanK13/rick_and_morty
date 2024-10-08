import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/styles/app_font_size.dart';

import 'app_colors.dart';

class AppTheme {
// Light Theme ---------------------------

  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Roboto',
    primaryColorLight: AppColors.buttonActive,
    colorSchemeSeed: AppColors.buttonActive,
    scaffoldBackgroundColor: AppColors.backgroundWhite,
    textTheme: const TextTheme().copyWith(
      titleLarge: const TextStyle(
          color: AppColors.textBlack,
          fontSize: 16,
          fontWeight: FontWeight.w400),
      titleMedium: const TextStyle(
          color: AppColors.textBlack,
          fontSize: 20,
          fontWeight: FontWeight.w500),
      bodySmall: const TextStyle(
          color: AppColors.textBlack,
          fontSize: 10,
          fontWeight: FontWeight.w500),
      bodyMedium: const TextStyle(
          color: AppColors.textBlack,
          fontSize: 14,
          fontWeight: FontWeight.w500),
      bodyLarge: const TextStyle(
          color: AppColors.textBlack,
          fontSize: 16,
          fontWeight: FontWeight.w500),
      labelSmall: const TextStyle(
          color: AppColors.textBlack,
          fontSize: 12,
          fontWeight: FontWeight.w400),
      labelMedium: const TextStyle(
          color: AppColors.textBlack,
          fontSize: 13,
          fontWeight: FontWeight.w400),
      labelLarge: const TextStyle(
          color: AppColors.textBlack,
          fontSize: 14,
          fontWeight: FontWeight.w400),
      displaySmall: const TextStyle(
          color: AppColors.textBlack,
          fontSize: 34,
          fontWeight: FontWeight.w400),
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
      foregroundColor: AppColors.backgroundWhite,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: AppColors.textBlack,
      ),
      iconTheme: IconThemeData(
        color: AppColors.textBlack,
      ),
    ),
    dividerColor: AppColors.dividerColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 10,
      backgroundColor: AppColors.navBarBackgroundWhite,
      selectedItemColor: AppColors.buttonActive,
      unselectedItemColor: AppColors.buttonDisabled,
      selectedLabelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      unselectedLabelStyle: TextStyle(
        color: AppColors.buttonDisabled,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      unselectedIconTheme: IconThemeData(
        color: AppColors.buttonDisabled,
      ),
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        disabledForegroundColor: Colors.grey.withOpacity(0.38),
        disabledBackgroundColor: Colors.grey.withOpacity(0.12),
        backgroundColor: AppColors.backgroundWhite,
        foregroundColor: AppColors.buttonActive,
        elevation: 0,
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            color: AppColors.buttonActive,
            width: 1,
          ),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: const TextStyle(color: AppColors.textGray),
      filled: true,
      iconColor: AppColors.textGray,
      fillColor: AppColors.searchBackgroundWhite,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),
      contentPadding: const EdgeInsets.all(0),
    ),
    dialogTheme: const DialogTheme().copyWith(
      backgroundColor: AppColors.backgroundWhite,
    ),
  );

// Dark Theme ---------------------------
  static ThemeData darkTheme = ThemeData(
    fontFamily: 'Roboto',
    primaryColorDark: AppColors.statusAlive,
    colorSchemeSeed: AppColors.statusAlive,
    scaffoldBackgroundColor: AppColors.backgroundDark,
    dialogTheme: const DialogTheme().copyWith(
      backgroundColor: AppColors.navBarBackgroundBlack,
    ),
    dividerColor: AppColors.searchBackgroundDark,
    textTheme: const TextTheme().copyWith(
      titleLarge: const TextStyle(
          color: AppColors.textWhite,
          fontSize: 16,
          fontWeight: FontWeight.w400),
      titleMedium: const TextStyle(
        color: AppColors.textWhite,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: const TextStyle(
          color: AppColors.textWhite,
          fontSize: 10,
          fontWeight: FontWeight.w500),
      bodyMedium: const TextStyle(color: AppColors.textWhite),
      bodyLarge: const TextStyle(
          color: AppColors.textWhite,
          fontSize: 16,
          fontWeight: FontWeight.w500),
      labelSmall: const TextStyle(
          color: AppColors.textWhite,
          fontSize: 12,
          fontWeight: FontWeight.w400),
      labelMedium: const TextStyle(
          color: AppColors.textWhite,
          fontSize: 13,
          fontWeight: FontWeight.w400),
      labelLarge: const TextStyle(
          color: AppColors.textWhite,
          fontSize: 14,
          fontWeight: FontWeight.w400),
      displaySmall: const TextStyle(
          color: AppColors.textWhite,
          fontSize: 34,
          fontWeight: FontWeight.w400),
      displayMedium: const TextStyle(color: AppColors.textWhite),
      displayLarge: const TextStyle(color: AppColors.textWhite),
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
      foregroundColor: AppColors.backgroundDark,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
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
      unselectedItemColor: AppColors.buttonDisabled,
      selectedLabelStyle: TextStyle(fontSize: AppFontSize.xSmall),
      unselectedLabelStyle: TextStyle(
        color: AppColors.buttonDisabled,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      unselectedIconTheme: IconThemeData(
        color: AppColors.buttonDisabled,
      ),
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        disabledForegroundColor: Colors.grey.withOpacity(0.38),
        disabledBackgroundColor: Colors.grey.withOpacity(0.12),
        backgroundColor: AppColors.backgroundDark,
        foregroundColor: AppColors.buttonActive,
        elevation: 0,
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            color: AppColors.buttonActive,
            width: 1,
          ),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: const TextStyle(color: AppColors.textGray),
      filled: true,
      iconColor: AppColors.textGray,
      suffixIconColor: AppColors.textGray,
      prefixIconColor: AppColors.textGray,
      fillColor: AppColors.searchBackgroundDark,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),
      contentPadding: const EdgeInsets.all(0),
    ),
  );
}
