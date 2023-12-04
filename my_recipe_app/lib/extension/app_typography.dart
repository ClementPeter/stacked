import 'package:flutter/material.dart';

// Typography class is used to structure our App TextStyle for easy usability
// with ThemeExtensions and for scalability as well

class AppTypography extends ThemeExtension<AppTypography> {
  final TextStyle? headlineBold22;
  final TextStyle? headlineBold24;
  final TextStyle? headlineBold28;
  final TextStyle? titleRegular16;
  final TextStyle? titleBold16;
  final TextStyle? labelRegular12;
  final TextStyle? labelRegular14;
  final TextStyle? labelRegular16;
  final TextStyle? labelMedium16;

  AppTypography({
    required this.headlineBold22,
    required this.headlineBold24,
    required this.headlineBold28,
    required this.titleRegular16,
    required this.titleBold16,
    required this.labelRegular12,
    required this.labelRegular14,
    required this.labelRegular16,
    required this.labelMedium16,
  });

  @override
  ThemeExtension<AppTypography> copyWith({
    TextStyle? headlineBold22,
    TextStyle? headlineBold24,
    TextStyle? headlineBold28,
    TextStyle? titleRegular16,
    TextStyle? titleBold16,
    TextStyle? labelRegular12,
    TextStyle? labelRegular14,
    TextStyle? labelRegular16,
    TextStyle? labelMedium16,
  }) {
    return AppTypography(
      headlineBold22: headlineBold22 ?? this.headlineBold22,
      headlineBold24: headlineBold24 ?? this.headlineBold24,
      headlineBold28: headlineBold28 ?? this.headlineBold28,
      titleRegular16: titleRegular16 ?? this.titleRegular16,
      titleBold16: titleBold16 ?? this.titleBold16,
      labelRegular12: labelRegular12 ?? this.labelRegular12,
      labelRegular14: labelRegular14 ?? this.labelRegular14,
      labelRegular16: labelRegular16 ?? this.labelRegular16,
      labelMedium16: labelMedium16 ?? this.labelMedium16,
    );
  }

  //Lerp is to aid smooth transitioning of theming btwn different theme modes
  @override
  ThemeExtension<AppTypography> lerp(
      covariant ThemeExtension<AppTypography>? other, double t) {
    if (other is! AppTypography) {
      return this;
    }
    return AppTypography(
      headlineBold22: TextStyle.lerp(headlineBold22, other.headlineBold22, t),
      headlineBold24: TextStyle.lerp(headlineBold24, other.headlineBold24, t),
      headlineBold28: TextStyle.lerp(headlineBold28, other.headlineBold28, t),
      titleRegular16: TextStyle.lerp(titleRegular16, other.titleRegular16, t),
      titleBold16: TextStyle.lerp(titleBold16, other.titleBold16, t),
      labelRegular12: TextStyle.lerp(labelRegular12, other.labelRegular12, t),
      labelRegular14: TextStyle.lerp(labelRegular14, other.labelRegular14, t),
      labelRegular16: TextStyle.lerp(labelRegular16, other.labelRegular16, t),
      labelMedium16: TextStyle.lerp(labelRegular14, other.labelRegular14, t),
    );
  }
}
