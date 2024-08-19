import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/styles/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ThemeEvent {}

class ChangeThemeMode extends ThemeEvent {
  final ThemeMode themeMode;

  ChangeThemeMode(this.themeMode);
}

abstract class ThemeState {
  final ThemeData themeData;
  final ThemeMode themeMode;

  ThemeState(this.themeData, this.themeMode);
}

class ThemeChanged extends ThemeState {
  ThemeChanged(super.themeData, super.themeMode);
}

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc(super.initialState) {
    on<ChangeThemeMode>((event, emit) async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(AppConsts.themeModeKey, event.themeMode.toString());
      emit(ThemeChanged(
          _mapThemeModeToThemeData(event.themeMode), event.themeMode));
    });
  }

  static Future<ThemeState> getInitialTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? themeModeString = prefs.getString(AppConsts.themeModeKey);
    final ThemeMode themeMode = _mapStringToThemeMode(themeModeString);

    return ThemeChanged(_mapThemeModeToThemeData(themeMode), themeMode);
  }

  static ThemeMode _mapStringToThemeMode(String? themeModeString) {
    switch (themeModeString) {
      case 'ThemeMode.dark':
        return ThemeMode.dark;
      case 'ThemeMode.light':
        return ThemeMode.light;
      case 'ThemeMode.system':
        return ThemeMode.system;
      default:
        return ThemeMode.system;
    }
  }

  static ThemeData _mapThemeModeToThemeData(ThemeMode themeMode) {
    switch (themeMode) {
      case ThemeMode.dark:
        return AppTheme.darkTheme;
      case ThemeMode.light:
        return AppTheme.lightTheme;
      default:
        return AppTheme.lightTheme; // or AppTheme.systemTheme if you have one
    }
  }
}
