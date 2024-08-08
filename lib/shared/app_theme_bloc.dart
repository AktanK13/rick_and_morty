import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/constants.dart';
import 'package:rick_and_morty/core/styles/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ThemeEvent {}

class ToggleTheme extends ThemeEvent {}

abstract class ThemeState {
  ThemeState(this.themeData);
  final ThemeData themeData;
}

class ThemeChanged extends ThemeState {
  ThemeChanged(super.themeData);
}

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc(super.initialState) {
    on<ToggleTheme>((event, emit) async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final bool isDarkTheme = state.themeData == AppTheme.darkTheme;
      await prefs.setBool(AppConsts.darkThemeKey, !isDarkTheme);
      emit(ThemeChanged(isDarkTheme ? AppTheme.lightTheme : AppTheme.darkTheme));
      
    });
  }
  static Future<ThemeState> getInitialTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool isDarkTheme = prefs.getBool(AppConsts.darkThemeKey) ?? false;

    return ThemeChanged(isDarkTheme ? AppTheme.darkTheme : AppTheme.lightTheme);
  }
}
