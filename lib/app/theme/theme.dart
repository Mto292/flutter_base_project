import 'package:flutter/material.dart';

import '../constants/assets/assets.dart';

abstract class AppTheme {
  Brightness get brightness;

  Color get backgroundColor;

  Color get scaffoldBackgroundColor;

  Color get shadowColor;

  Color get disabledColor;

  IconThemeData get accentIconTheme;

  IconThemeData get primaryIconTheme;

  IconThemeData get iconTheme;

  Color get cardColor;

  Color get bottomAppBarColor;

  Color get dividerColor;

  ColorScheme get colorScheme;

  ColorScheme get buttonColorScheme;

  CardTheme get cardTheme;

  TextTheme get textTheme;

  ElevatedButtonThemeData get elevatedButtonTheme;

  InputDecorationTheme get inputDecorationTheme;

  TextSelectionThemeData get textSelectionThemeData;

  TextButtonThemeData get textButtonThemeData;

  OutlinedButtonThemeData get outlinedButtonThemeData;

  CheckboxThemeData get checkboxThemeData;

  RadioThemeData get radioThemeData;

  DividerThemeData get dividerTheme;

  AppBarTheme get appBarTheme;

  TabBarTheme get tabBarTheme;

  PopupMenuThemeData get popupMenuThemeData;

  TimePickerThemeData get timePickerThemeData;

  DatePickerThemeData get datePickerTheme;

  Color get indicatorColor;

  BottomAppBarTheme get bottomAppBarTheme;

  DialogTheme get dialogTheme;

  ProgressIndicatorThemeData get progressIndicatorTheme;

  Color get primaryColorDark;

  Color get primaryColorLight;

  Color get hintColor;
}

ThemeData getTheme<T extends AppTheme>(T theme) => ThemeData(
  progressIndicatorTheme: theme.progressIndicatorTheme,
  primaryColorDark: theme.primaryColorDark,
  primaryColorLight: theme.primaryColorLight,
  disabledColor: theme.disabledColor,
  colorScheme: theme.colorScheme,
  scaffoldBackgroundColor: theme.scaffoldBackgroundColor,
  cardColor: theme.cardColor,
  shadowColor: theme.shadowColor,
  cardTheme: theme.cardTheme,
  fontFamily: fontFamily,
  textTheme: theme.textTheme,
  appBarTheme: theme.appBarTheme,
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
  buttonTheme: ButtonThemeData(colorScheme: theme.buttonColorScheme),
  radioTheme: theme.radioThemeData,
  tabBarTheme: theme.tabBarTheme,
  indicatorColor: theme.indicatorColor,
  bottomAppBarTheme: theme.bottomAppBarTheme,
  dialogTheme: theme.dialogTheme,
  hintColor: theme.hintColor,
  popupMenuTheme: theme.popupMenuThemeData,
  timePickerTheme: theme.timePickerThemeData,
  datePickerTheme: theme.datePickerTheme,
);
