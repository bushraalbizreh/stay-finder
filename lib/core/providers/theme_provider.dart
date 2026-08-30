import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stayfinder/core/config/get_it.dart';
import 'package:stayfinder/core/constants/app_keys.dart';

class ThemeProvider extends ChangeNotifier {
  bool isDarkTheme = false;

  void loadTheme() {
    getIt.get<SharedPreferences>().getBool(AppKeys.isDarkThemeKey) ?? false;
    notifyListeners();
  }

  void toggleTheme() {
    bool previousTheme =
        getIt.get<SharedPreferences>().getBool(AppKeys.isDarkThemeKey) ?? false;
    isDarkTheme != previousTheme;
    getIt.get<SharedPreferences>().setBool(AppKeys.isDarkThemeKey, isDarkTheme);
    notifyListeners();
  }
}
