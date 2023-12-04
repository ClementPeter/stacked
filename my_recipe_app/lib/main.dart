import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_recipe_app/app/app.bottomsheets.dart';
import 'package:my_recipe_app/app/app.dialogs.dart';
import 'package:my_recipe_app/app/app.locator.dart';
import 'package:my_recipe_app/app/app.router.dart';
import 'package:my_recipe_app/ui/common/app_theme.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}
