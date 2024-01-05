import 'package:flutter/material.dart';
import 'package:my_recipe_app/extension/app_typography.dart';
import 'package:my_recipe_app/extension/palette.dart';

extension BuildContextExtension on BuildContext {
  //Getter to always access the "Theme.of(context)"
  ThemeData get theme => Theme.of(this);

  //Easily call the extension w/o referencing context on each instance
  AppTypography? get typpgraphy => theme.extension<AppTypography>();
  Palette? get palette => theme.extension<Palette>();
}
