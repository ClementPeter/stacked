import 'package:flutter/material.dart';

class Palette extends ThemeExtension<Palette> {
  Palette({
    required this.grey1,
    required this.grey6,
    required this.grey7,
    required this.grey8,
    required this.grey9,
    required this.grey11,
    required this.grey12,
    required this.grey13,
    required this.primary6,
    required this.primary11,
    required this.redShade,
    required this.popUpBg,
    required this.orangeShade,
    required this.barrierColor,
    required this.iconBackground2,
    required this.iconBackground3,
    required this.iconBackground,
    required this.white,
  });

  final Color? grey1;
  final Color? grey6;
  final Color? grey7;
  final Color? grey8;
  final Color? grey9;
  final Color? grey11;
  final Color? grey12;
  final Color? grey13;
  final Color? primary6;
  final Color? primary11;
  final Color? redShade;
  final Color? popUpBg;
  final Color? orangeShade;
  final Color? barrierColor;
  final Color? iconBackground;
  final Color? iconBackground2;
  final Color? iconBackground3;
  final Color? white;

  @override
  ThemeExtension<Palette> copyWith({
    Color? grey1,
    Color? grey6,
    Color? grey7,
    Color? grey8,
    Color? grey9,
    Color? grey11,
    Color? grey12,
    Color? grey13,
    Color? primary6,
    Color? primary11,
    Color? redShade,
    Color? popUpBg,
    Color? barrierColor,
    Color? iconBackground2,
    Color? iconBackground3,
    Color? orangeShade,
    Color? iconBackground,
  }) {
    return Palette(
      grey1: grey1 ?? this.grey1,
      grey6: grey6 ?? this.grey6,
      grey7: grey7 ?? this.grey7,
      grey8: grey8 ?? this.grey8,
      grey9: grey9 ?? this.grey9,
      grey11: grey11 ?? this.grey11,
      grey12: grey12 ?? this.grey12,
      grey13: grey12 ?? this.grey13,
      primary6: primary6 ?? this.primary6,
      primary11: primary11 ?? primary11,
      redShade: redShade ?? this.redShade,
      popUpBg: popUpBg ?? this.popUpBg,
      barrierColor: barrierColor ?? this.barrierColor,
      iconBackground2: iconBackground2 ?? this.iconBackground2,
      iconBackground3: iconBackground3 ?? this.iconBackground3,
      orangeShade: orangeShade ?? this.orangeShade,
      iconBackground: iconBackground ?? this.iconBackground,
      white: white ?? white,
    );
  }

  @override
  ThemeExtension<Palette> lerp(
      covariant ThemeExtension<Palette>? other, double t) {
    if (other is! Palette) {
      return this;
    }
    return Palette(
        grey1: Color.lerp(grey1, other.grey1, t),
        grey6: Color.lerp(grey6, other.grey6, t),
        grey7: Color.lerp(grey7, other.grey7, t),
        grey8: Color.lerp(grey8, other.grey8, t),
        grey9: Color.lerp(grey9, other.grey9, t),
        grey11: Color.lerp(grey11, other.grey11, t),
        grey12: Color.lerp(grey12, other.grey12, t),
        grey13: Color.lerp(grey13, other.grey13, t),
        primary6: Color.lerp(primary6, other.primary6, t),
        primary11: Color.lerp(primary11, other.primary11, t),
        redShade: Color.lerp(redShade, other.redShade, t),
        popUpBg: Color.lerp(popUpBg, other.popUpBg, t),
        orangeShade: Color.lerp(orangeShade, other.orangeShade, t),
        barrierColor: Color.lerp(barrierColor, other.barrierColor, t),
        iconBackground2: Color.lerp(iconBackground2, other.iconBackground2, t),
        iconBackground3: Color.lerp(iconBackground3, other.iconBackground3, t),
        iconBackground: Color.lerp(iconBackground, other.iconBackground, t),
        white: Color.lerp(white, other.white, t));
  }
}
