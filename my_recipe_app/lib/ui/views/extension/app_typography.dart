// import 'package:flutter/material.dart';

// class AppTypography extends ThemeExtension<AppTypography> {
//   AppTypography({
//     required this.headline24,
//     required this.headline28,
//   });

//   final TextStyle? headline24;
//   final TextStyle? headline28;

//   @override
//   AppTypography copyWith({
//     TextStyle? headline28,
//   }) {
//     return AppTypography(
//       headline24: headline24 ?? this.headline28,
//       headline28: headline28 ?? this.headline28,
//     );
//   }

//   @override
//   AppTypography lerp(AppTypography? other, double t) {
//     if (other is! AppTypography) {
//       return this;
//     }
//     return AppTypography(
//         headline24: TextStyle.lerp(headline24, other.headline24, t),
//         headline28: TextStyle.lerp(headline28, other.headline28, t));
//   }
// }
