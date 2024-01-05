import 'package:flutter/material.dart';
import 'package:my_recipe_app/extension/app_typography.dart';
import 'package:my_recipe_app/extension/pallete.dart';
import 'package:my_recipe_app/ui/common/app_colors.dart';
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
        ),
        Palette(
          grey1: AppColors.grey1,
          grey6: AppColors.grey6,
          grey7: AppColors.grey7,
          grey8: AppColors.grey8,
          grey9: AppColors.grey9,
          grey11: AppColors.grey11,
          grey12: AppColors.grey12,
          grey13: AppColors.grey13,
          primary6: AppColors.primary6,
          primary11: AppColors.primary11,
          redShade: AppColors.redShade,
          popUpBg: AppColors.popUpBg,
          orangeShade: AppColors.orangeShade,
          barrierColor: AppColors.barrierColor,
          iconBackground2: AppColors.iconBackground2,
          iconBackground3: AppColors.iconBackground3,
          iconBackground: AppColors.iconBackground,
          white: AppColors.white,
        )
      ],
    );
  }
}
