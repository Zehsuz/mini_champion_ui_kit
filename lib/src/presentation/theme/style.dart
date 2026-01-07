import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_kit_07_01_2026/src/presentation/theme/palette.dart';

class Style {
  final Palette palette;

  Style({required this.palette});

  TextStyle get title3Semibold17 => TextStyle(
    fontWeight: FontWeight.w600,
    color: palette.black,
    fontSize: 17.sp,
    height: 17 / 24,
    letterSpacing: 0,
  );
}
