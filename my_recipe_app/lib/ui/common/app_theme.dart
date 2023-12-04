import 'package:flutter/material.dart';
import 'package:my_recipe_app/extension/app_typography.dart';
import 'package:my_recipe_app/ui/common/app_text_styles.dart';

//App theme is where we specify the global theming properties for
//the app- Light and dark theme, Color Pallete and App typography

class AppTheme {
  //light Theme
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      extensions: <ThemeExtension<dynamic>>[
        AppTypography(
          headlineBold22: AppTextStyles.headlineBold22,
          headlineBold24: AppTextStyles.headlineBold24,
          headlineBold28: AppTextStyles.headlineBold28,
          titleRegular16: AppTextStyles.titleRegular16,
          titleBold16: AppTextStyles.titleBold16,
          labelRegular12: AppTextStyles.labelRegular12,
          labelRegular14: AppTextStyles.labelRegular14,
          labelRegular16: AppTextStyles.labelRegular16,
          labelMedium16: AppTextStyles.labelRegular16,
        )
      ],
    );
  }
}
