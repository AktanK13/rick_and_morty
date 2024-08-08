import 'package:shared_preferences/shared_preferences.dart';

// class SharedPreferencesService {
//   static const IS_DARK_THEME = "isDarkTheme";
//   setDarkTheme(bool value) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.setBool(IS_DARK_THEME, value);
//   }

//   Future<bool> getTheme() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     return prefs.getBool(IS_DARK_THEME) ?? false;
//   }
// }

class DarkThemePreference {
  static const THEME_STATUS = "THEMESTATUS";

  setDarkTheme(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(THEME_STATUS, value);
  }

  Future<bool> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(THEME_STATUS) ?? false;
  }
}