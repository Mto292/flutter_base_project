import 'package:flutter/material.dart';

import 'colors.dart';

abstract class AppTheme {
  late final Brightness brightness;
  late final Color backgroundColor;
  late final Color scaffoldBackgroundColor;
  late final Color shadowColor;
  late final IconThemeData accentIconTheme;
  late final IconThemeData primaryIconTheme;
  late final IconThemeData iconTheme;
  late final Color cardColor = Colors.black;
  late final Color bottomAppBarColor = Colors.black;
  late final Color dividerColor;
  late final ColorScheme colorScheme;
  late final ColorScheme buttonColorScheme;
  late final CardTheme cardTheme;
  late final TextTheme textTheme;
  late final ElevatedButtonThemeData elevatedButtonTheme;
  late final InputDecorationTheme inputDecorationTheme;
  late final TextSelectionThemeData textSelectionThemeData;
  late final TextButtonThemeData textButtonThemeData;
  late final OutlinedButtonThemeData outlinedButtonThemeData;
  late final CheckboxThemeData checkboxThemeData;
  late final RadioThemeData radioThemeData;
  late final DividerThemeData dividerTheme;
  late final AppBarTheme appBarTheme;
  late final TabBarTheme tabBarTheme;
  late final Color indicatorColor;
  late final BottomAppBarTheme bottomAppBarTheme;
}

ThemeData getTheme<T extends AppTheme>(T theme) => ThemeData(
      primaryColorDark: AppColor.primary,
      primaryColorLight: AppColor.primary,
      colorScheme: theme.colorScheme,
      backgroundColor: theme.backgroundColor,
      scaffoldBackgroundColor: theme.scaffoldBackgroundColor,
      cardColor: theme.cardColor,
      shadowColor: theme.shadowColor,
      cardTheme: theme.cardTheme,
      textTheme: theme.textTheme,
      appBarTheme: theme.appBarTheme,
      bottomAppBarColor: theme.bottomAppBarColor,
      iconTheme: theme.iconTheme,
      brightness: theme.brightness,
      elevatedButtonTheme: theme.elevatedButtonTheme,
      textSelectionTheme: theme.textSelectionThemeData,
      inputDecorationTheme: theme.inputDecorationTheme,
      primaryIconTheme: theme.primaryIconTheme,
      textButtonTheme: theme.textButtonThemeData,
      dividerColor: theme.dividerColor,
      dividerTheme: theme.dividerTheme,
      outlinedButtonTheme: theme.outlinedButtonThemeData,
      checkboxTheme: theme.checkboxThemeData,
      buttonTheme: ButtonThemeData(
        colorScheme: theme.buttonColorScheme,
      ),
      radioTheme: theme.radioThemeData,
      tabBarTheme: theme.tabBarTheme,
      indicatorColor: theme.indicatorColor,
      bottomAppBarTheme: theme.bottomAppBarTheme,
    );
