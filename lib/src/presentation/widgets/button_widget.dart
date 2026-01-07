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
          padding: padding,
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

class BigButtonWidget extends BaseButtonWidget {
  BigButtonWidget({
    required super.backgroundColor,
    required super.disabledBackgroundColor,
    required super.strokeColor,
    required super.textColor,
    required super.text,
    required super.onTap,
    required super.theme,
  });

  @override
  double get height => 56.h;

  @override
  EdgeInsets get padding =>
      EdgeInsets.symmetric(vertical: 16.h, horizontal: 114.w);

  @override
  TextStyle get textStyle => theme.style.title3Semibold17;

  @override
  double? get width => 335.w;

  BigButtonWidget.filled({super.key,
    required super.text,
    required super.onTap,
    required super.theme,
  }) : super (
    backgroundColor: theme.palette.accent,
    disabledBackgroundColor: theme.palette.accentInactive,
    strokeColor: Colors.transparent,
    textColor: theme.palette.white
  );
  BigButtonWidget.simple({super.key,
    required super.text,
    required super.onTap,
    required super.theme,
  }) : super (
    backgroundColor: theme.palette.input_bg,
    disabledBackgroundColor: theme.palette.accentInactive,
    strokeColor: Colors.transparent,
    textColor: theme.palette.black
  );
  BigButtonWidget.outline({super.key,
    required super.text,
    required super.onTap,
    required super.theme,
  }) : super (
    backgroundColor: Colors.transparent,
    disabledBackgroundColor: theme.palette.accentInactive,
    strokeColor: theme.palette.accent,
    textColor: theme.palette.accent,
  );

}
