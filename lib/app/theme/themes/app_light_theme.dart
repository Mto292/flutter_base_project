import 'package:flutter/material.dart';
import '../../constants/other/padding_and_radius_size.dart';
import '../../extensions/widgets_scale_extension.dart';
import '../color/app_colors.dart';
import '../theme.dart';

class AppLightTheme implements AppTheme {
  AppLightTheme();

  @override
  Brightness get brightness => Brightness.light;

  @override
  Color get backgroundColor => AppColors.grey.shade100;

  @override
  Color get scaffoldBackgroundColor => AppColors.grey.shade100;

  @override
  IconThemeData get accentIconTheme => const IconThemeData(color: Colors.white);

  @override
  IconThemeData get primaryIconTheme => const IconThemeData(color: Colors.white);

  @override
  IconThemeData get iconTheme => const IconThemeData(color: Colors.black);

  @override
  Color get cardColor => AppColors.grey.shade100;

  @override
  Color get bottomAppBarColor => Colors.white;

  @override
  Color get dividerColor => AppColors.lightWhite;

  @override
  Color get shadowColor => Colors.black26;

  @override
  Color get indicatorColor => AppColors.primary;

  @override
  ProgressIndicatorThemeData get progressIndicatorTheme => ProgressIndicatorThemeData(color: AppColors.primary);

  @override
  Color get primaryColorDark => AppColors.primary;

  @override
  Color get primaryColorLight => AppColors.primary;

  @override
  Color get hintColor => AppColors.grey.shade600;

  @override
  ColorScheme get colorScheme => ColorScheme(
        primary: AppColors.primary,
        onPrimary: Colors.white,
        primaryContainer: AppColors.primaryContainer,
        secondary: AppColors.secondary,
        onSecondary: AppColors.onSecondary,
        tertiary: AppColors.tertiary,
        secondaryContainer: AppColors.grey.shade800,
        surface: Colors.white,
        onSurface: AppColors.grey.shade800,
        background: AppColors.grey.shade100,
        onBackground: AppColors.grey.shade800,
        error: AppColors.red.shade800,
        onError: Colors.white,
        errorContainer: AppColors.red.shade600,
        brightness: Brightness.light,
        outline: AppColors.grey.shade600,
      );

  @override
  ColorScheme get buttonColorScheme => ColorScheme(
        primary: AppColors.primary,
        primaryContainer: AppColors.primaryContainer,
        secondary: AppColors.primaryContainer,
        secondaryContainer: AppColors.primaryContainer,
        surface: Colors.white,
        background: AppColors.primary,
        error: Colors.red,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: Colors.white,
        onBackground: Colors.white,
        onError: Colors.white,
        brightness: Brightness.light,
      );

  @override
  CardTheme get cardTheme => CardTheme(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radiusXXS)),
        color: AppColors.cardColor,
        margin: EdgeInsets.zero,
      );

  @override
  TextTheme get textTheme => TextTheme(
        ///HeadLine
        headline1: TextStyle(
          fontSize: 12.horizontalScale,
          fontWeight: FontWeight.w400,
          color: AppColors.grey.shade800,
        ),
        headline2: TextStyle(
          fontSize: 13.horizontalScale,
          fontWeight: FontWeight.w400,
          color: AppColors.grey.shade800,
        ),
        headline3: TextStyle(
          fontSize: 18.horizontalScale,
          fontWeight: FontWeight.w400,
          color: AppColors.grey.shade800,
        ),
        headline4: TextStyle(
          fontSize: 15.horizontalScale,
          fontWeight: FontWeight.w400,
          color: AppColors.grey.shade800,
        ),
        headline5: TextStyle(
          fontSize: 20.horizontalScale,
          fontWeight: FontWeight.w400,
          color: AppColors.grey.shade800,
        ),
        headline6: TextStyle(
          fontSize: 26.horizontalScale,
          fontWeight: FontWeight.w400,
          color: AppColors.grey.shade800,
        ),

        ///BodyText
        bodyText1: TextStyle(
          fontSize: 16.horizontalScale,
          fontWeight: FontWeight.w400,
          color: AppColors.grey.shade800,
        ),
        bodyText2: TextStyle(
          fontSize: 10.horizontalScale,
          fontWeight: FontWeight.w400,
          color: AppColors.grey.shade800,
        ),
        subtitle1: TextStyle(
          fontSize: 14.horizontalScale,
          fontWeight: FontWeight.w500,
          color: AppColors.grey.shade800,
        ),
        subtitle2: TextStyle(
          fontSize: 8.horizontalScale,
          fontWeight: FontWeight.w400,
          color: AppColors.grey.shade800,
        ),
        caption: TextStyle(
          fontSize: 11.horizontalScale,
          fontWeight: FontWeight.w400,
          color: AppColors.grey.shade800,
        ),
      );

  @override
  ElevatedButtonThemeData get elevatedButtonTheme => ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          disabledBackgroundColor: AppColors.grey.shade600,
          disabledForegroundColor: Colors.white,
          textStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 16.horizontalScale,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusXL),
          ),
        ),
      );

  @override
  InputDecorationTheme get inputDecorationTheme => InputDecorationTheme(
        fillColor: Colors.white,
        filled: true,
        labelStyle: TextStyle(
          fontSize: 14.horizontalScale,
          fontWeight: FontWeight.w400,
          color: AppColors.grey.shade800,
        ),
        hintStyle: TextStyle(
          fontWeight: FontWeight.w400,
          color: AppColors.grey.shade600,
          fontSize: 14.horizontalScale,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(
            radiusXS,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(
            radiusXS,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(
            radiusXS,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(
            radiusXS,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(
            radiusXS,
          ),
        ),
      );

  @override
  TextSelectionThemeData get textSelectionThemeData => TextSelectionThemeData(
        cursorColor: AppColors.primary,
        selectionColor: AppColors.primary.withOpacity(0.2),
        selectionHandleColor: AppColors.primary,
      );

  @override
  TextButtonThemeData get textButtonThemeData => TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
          foregroundColor: MaterialStateProperty.all<Color>(AppColors.primary),
          shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
          overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
          textStyle: MaterialStateProperty.all<TextStyle>(
            TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.w400,
              fontSize: 16.horizontalScale,
            ),
          ),
        ),
      );

  @override
  OutlinedButtonThemeData get outlinedButtonThemeData => OutlinedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
          side: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) return BorderSide(color: AppColors.grey.shade100);
            return BorderSide(color: AppColors.grey.shade800);
          }),
          foregroundColor: MaterialStateProperty.all<Color>(AppColors.grey.shade800),
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
          textStyle: MaterialStateProperty.all<TextStyle>(
            TextStyle(
              color: AppColors.grey.shade800,
              fontWeight: FontWeight.w400,
              fontSize: 16.horizontalScale,
            ),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radiusXL),
            ),
          ),
        ),
      );

  @override
  CheckboxThemeData get checkboxThemeData => CheckboxThemeData(
        fillColor: MaterialStateProperty.all<Color?>(AppColors.primary),
        checkColor: MaterialStateProperty.all<Color?>(Colors.white),
        side: BorderSide(width: 0.7, color: AppColors.primary),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusXXXS),
        ),
      );

  @override
  RadioThemeData get radioThemeData => RadioThemeData(
        fillColor: MaterialStateProperty.all<Color>(AppColors.primary),
      );

  @override
  DividerThemeData get dividerTheme => DividerThemeData(
        color: AppColors.lightWhite,
        space: 0,
      );

  @override
  AppBarTheme get appBarTheme => AppBarTheme(
        titleSpacing: 0,
        elevation: 0,
        color: AppColors.appBarColor,
        titleTextStyle: TextStyle(
          fontSize: 16.horizontalScale,
          fontWeight: FontWeight.w500,
          color: AppColors.onAppBarColor,
        ),
        centerTitle: true,
        actionsIconTheme: IconThemeData(color: AppColors.onAppBarColor),
        iconTheme: IconThemeData(color: AppColors.onAppBarColor),
      );

  @override
  TabBarTheme get tabBarTheme => TabBarTheme(
        labelColor: AppColors.primary,
        labelStyle: TextStyle(
          fontSize: 14.horizontalScale,
          fontWeight: FontWeight.w700,
          color: AppColors.primary,
        ),
        unselectedLabelColor: AppColors.grey.shade800,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.horizontalScale,
          fontWeight: FontWeight.w700,
          color: AppColors.grey.shade800,
        ),
      );

  @override
  BottomAppBarTheme get bottomAppBarTheme => const BottomAppBarTheme(
        color: Colors.transparent,
        elevation: 0,
      );

  @override
  DialogTheme get dialogTheme => DialogTheme(
        backgroundColor: AppColors.cardColor,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radiusL)),
      );
}
