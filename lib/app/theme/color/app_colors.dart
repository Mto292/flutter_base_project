import 'package:flutter/material.dart';

abstract class AppColors {
  AppColors._();

  static const Color primary = Color(0xff344c98);
  static const Color primaryContainer = Color(0xff415AA8);
  static const Color secondary = Color(0xFFFFC629);
  static const Color cardColor = Colors.white;

  static MaterialColor grey = const MaterialColor(
    0xFF9E9E9E,
    <int, Color>{
      100: Color(0xFFF1F2F4), // background
      200: Color(0xffD2D6DB), // lightGrey
      600: Color(0xFF9E9E9E), // paleColor
      800: Color(0xFF333333), // darkText
    },
  );

  static MaterialColor green = const MaterialColor(
    0xFF32D583,
    <int, Color>{
      200: Color(0xFFECFDF3), // lightGreen
      600: Color(0xFF32D583),
      800: Color(0xFF039855), // shamrockGreen
    },
  );

  static MaterialColor red = const MaterialColor(
    0xffF97066,
    <int, Color>{
      200: Color(0xffFEF3F2),
      600: Color(0xffF97066), // errorContainer
      800: Color(0xffD92D20), // errorColor
    },
  );

  static MaterialColor blue = const MaterialColor(
    0xFF53B1FD,
    <int, Color>{
      100: Color(0xffEAF5FF), // aliceBlue
      200: Color(0xFFEFF8FF), // lightBlue
      600: Color(0xFF53B1FD),
      800: Color(0xFF1570EF),
      900: Color(0xFF27356F), // darkBlue
    },
  );

  static MaterialColor orange = const MaterialColor(
    0xFFFDB022,
    <int, Color>{
      200: Color(0xFFFFFAEB),
      600: Color(0xFFFDB022),
      800: Color(0xFFDC6803),
    },
  );
}
