import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/styles/app_theme.dart';


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
  ThemeBloc() : super(ThemeChanged(AppTheme.lightTheme)) {
    on<ToggleTheme>((event, emit) {
      if (state.themeData == AppTheme.lightTheme) {
        emit(ThemeChanged(AppTheme.darkTheme));
      } else {
        emit(ThemeChanged(AppTheme.lightTheme));
      }
    });
  }
}
