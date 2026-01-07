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
  TextStyle get textRegular15 => TextStyle(
    fontWeight: FontWeight.w400,
    color: palette.black,
    fontSize: 15.sp,
    height: 15 / 20,
    letterSpacing: 0,
  );
  TextStyle get captionRegular14 => TextStyle(
    fontWeight: FontWeight.w400,
    color: palette.black,
    fontSize: 14.sp,
    height: 14 / 20,
    letterSpacing: 0,
  );
  TextStyle get title1Heavy14 => TextStyle(
    fontWeight: FontWeight.w700,
    color: palette.black,
    fontSize: 24.sp,
    height: 24 / 28,
    letterSpacing: 0,
  );
  TextStyle get title3Medium17  => TextStyle(
    fontWeight: FontWeight.w500,
    color: palette.black,
    fontSize:17.sp,
    height: 17 / 24,
    letterSpacing: 0,
  );
}
