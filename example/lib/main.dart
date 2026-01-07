import 'package:example/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_kit_07_01_2026/ui_kit_07_01_2026.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      child: MaterialApp(
        theme: ThemeData().copyWith(extensions: [CustomTheme(palette: LightPalette())]),
        debugShowCheckedModeBanner: false,
        home: HomePage()
      ),
    );
  }
}


