import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_kit_07_01_2026/ui_kit_07_01_2026.dart';

class InputWidget extends StatelessWidget {
  final String label;
  final String hint;
  final String error;
  final TextEditingController controller;

  const InputWidget({
    super.key,
    required this.label,
    required this.hint,
    required this.error,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    var theme = CustomTheme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8.h,
      children: [
        if (label.isNotEmpty)
          Text(
            label,
            style: theme.style.captionRegular14.copyWith(
              color: theme.palette.caption,
            ),
          ),
        TextField(
          cursorColor: theme.palette.accent,
          controller: controller,
          cursorWidth: 2.w,
          decoration: InputDecoration(
            filled: true,
            fillColor: error.isNotEmpty
                ? theme.palette.error.withValues(alpha: 0.1)
                : theme.palette.input_bg,
            hintText: hint,
            hintStyle: theme.style.textRegular15.copyWith(
              color: theme.palette.inputIcon,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                color: error.isNotEmpty
                    ? theme.palette.error
                    : (label.isEmpty && controller.text.isNotEmpty)
                    ? theme.palette.inputIcon
                    : theme.palette.input_bg,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: theme.palette.accent.withValues(alpha: 0.5),
              ),
              borderRadius: BorderRadius.circular(10.r),
            ),

          ),
        ),
        if (error.isNotEmpty)
          Text(
            label,
            style: theme.style.captionRegular14.copyWith(
              color: theme.palette.error,
            ),
          ),
      ],
    );
  }
}
