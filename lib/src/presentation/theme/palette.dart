import 'package:flutter/material.dart';

abstract class Palette{
  abstract Color accent;
  abstract Color accentInactive;
  abstract Color input_bg;
  abstract Color input_stroke;
  abstract Color error;
  abstract Color success;
  abstract Color description;
  abstract Color placeholder;
  abstract Color inputIcon;
  abstract Color cardStroke;
}

class LightPalette extends Palette{
  @override
  Color accent = Color(0xFF1A6FEE);

  @override
  Color accentInactive = Color(0xFFC9D4FB);

  @override
  Color cardStroke = Color(0xFFF4F4F4);

  @override
  Color description = Color(0xFF7E7E9A);

  @override
  Color error = Color(0xFFFD3535);

  @override
  Color inputIcon = Color(0xFFB8C1CC);

  @override
  Color input_bg = Color(0xFFF5F5F9);

  @override
  Color input_stroke = Color(0xFFEBEBEB);

  @override
  Color placeholder = Color(0xFF939396);

  @override
  Color success = Color(0xFF00B712);
}