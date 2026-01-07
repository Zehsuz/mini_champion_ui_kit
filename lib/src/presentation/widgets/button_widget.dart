import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_kit_07_01_2026/ui_kit_07_01_2026.dart';

abstract class BaseButtonWidget extends StatelessWidget {
  final Color backgroundColor;
  final Color? disabledBackgroundColor;
  final Color strokeColor;
  final Color textColor;
  final String text;
  final Function()? onTap;
  final CustomTheme theme;

  const BaseButtonWidget({
    super.key,
    required this.backgroundColor,
    required this.disabledBackgroundColor,
    required this.strokeColor,
    required this.textColor,
    required this.text,
    required this.onTap,
    required this.theme,
  });

  @protected
  double? get width;

  @protected
  double get height;

  @protected
  TextStyle get textStyle;

  @protected
  EdgeInsets get padding;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: FilledButton(
        onPressed: onTap,
        style: FilledButton.styleFrom(
          disabledBackgroundColor: disabledBackgroundColor,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
            side: BorderSide(color: strokeColor, width: 1.w),
          ),
        ),
        child: Text(text, style: textStyle),
      ),
    );
  }
}
