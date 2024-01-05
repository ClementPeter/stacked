import 'package:stacked_themes/stacked_themes.dart';
import 'package:theme_switch/app/app.bottomsheets.dart';
import 'package:theme_switch/app/app.dialogs.dart';
import 'package:theme_switch/app/app.locator.dart';
import 'package:theme_switch/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _themeService = locator<ThemeService>();

  void toggleTheme() {
    _themeService.toggleDarkLightTheme();
  }
}
