import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/utils/shared_preferences_service.dart';

// class DarkThemeProvider with ChangeNotifier {
//   SharedPreferencesService darkThemePreference = SharedPreferencesService();
//   bool _isDarkTheme = false;

//   bool get darkTheme => _isDarkTheme;

//   set darkTheme(bool value) {
//     _isDarkTheme = value;
//     darkThemePreference.setDarkTheme(value);
//     notifyListeners();
//   }
// }

class DarkThemeProvider with ChangeNotifier {
  DarkThemePreference darkThemePreference = DarkThemePreference();
  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    darkThemePreference.setDarkTheme(value);
    notifyListeners();
  }
}