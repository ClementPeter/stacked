import 'package:flutter/material.dart';
import 'package:stacked_themes/stacked_themes.dart';
import 'package:theme_switch/app/app.locator.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  final ThemeService _themeService = locator<ThemeService>();

  void toggleTheme() {
    _themeService.toggleDarkLightTheme();
  }

  void setThemeModeLight(BuildContext context) {
    getThemeManager(context).setThemeMode(ThemeMode.light);
  }

  void setThemeModeDark(BuildContext context) {
    getThemeManager(context).setThemeMode(ThemeMode.dark);
  }
}
