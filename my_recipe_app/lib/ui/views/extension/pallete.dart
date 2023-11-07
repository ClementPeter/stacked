import 'package:flutter/material.dart';

// Pallete class is used to structure our App colors for easy usability
// with ThemeExtensions and for scalability as well

class Pallete extends ThemeExtension<Pallete> {
  final Color? primary6;
  final Color? white;

  Pallete({required this.primary6, required this.white});

  @override
  ThemeExtension<Pallete> copyWith({Color? primary6, Color? white}) {
    return Pallete(
      primary6: primary6 ?? this.primary6,
      white: white ?? white,
    );
  }

  @override
  ThemeExtension<Pallete> lerp(
    covariant ThemeExtension<Pallete>? other,
    double t,
  ) {
    if (other is! Pallete) {
      return this;
    }
    return Pallete(
      primary6: Color.lerp(primary6, other.primary6, t),
      white: Color.lerp(primary6, other.primary6, t),
    );
  }
}
