import 'package:flutter/material.dart';
import 'package:ui_kit_07_01_2026/ui_kit_07_01_2026.dart';

class CustomTheme extends ThemeExtension<CustomTheme> {
  final Palette palette;
  final Style style;

  CustomTheme({required this.palette}) : style = Style(palette: palette);

  @override
  ThemeExtension<CustomTheme> copyWith() => CustomTheme(palette: palette);

  @override
  ThemeExtension<CustomTheme> lerp(
    covariant ThemeExtension<CustomTheme>? other,
    double t,
  ) => this;

  static CustomTheme of(context) => Theme.of(context).extension<CustomTheme>()!;
}
