import 'package:flutter/material.dart';
import '../../constants/assets/assets.dart';
import '../../constants/other/padding_and_radius_size.dart';
import '../../extensions/widgets_scale_extension.dart';
import '../color/app_colors.dart';
import '../theme.dart';

class AppLightTheme implements AppTheme {
  @override
  Color backgroundColor = AppColors.grey.shade100;
  @override
  Color scaffoldBackgroundColor = AppColors.grey.shade100;
  @override
  Color cardColor = Colors.white;
  @override
  Color bottomAppBarColor = Colors.white;
  @override
  Color disabledColor = AppColors.grey.shade100;

  @override
  IconThemeData accentIconTheme = const IconThemeData(color: Colors.white);

  @override
  IconThemeData primaryIconTheme = const IconThemeData(color: Colors.white);

  @override
  IconThemeData iconTheme = const IconThemeData(color: Colors.black);

  @override
  ColorScheme get colorScheme => ColorScheme(
        primary: AppColors.primary,
        onPrimary: Colors.white,
        primaryContainer: AppColors.primaryContainer,
        secondary: AppColors.secondary,
        onSecondary: AppColors.grey.shade800,
        secondaryContainer: AppColors.grey.shade800,
        surface: AppColors.cardColor,
        onSurface: AppColors.grey.shade800,
        error: AppColors.red.shade800,
        onError: Colors.white,
        errorContainer: AppColors.red.shade600,
        brightness: Brightness.light,
        outline: AppColors.grey.shade600,
        onSurfaceVariant: AppColors.blue.shade200,
      );

  @override
  AppBarTheme get appBarTheme => AppBarTheme(
        titleSpacing: 0,
        elevation: 0,
        color: AppColors.grey.shade100,
        titleTextStyle: TextStyle(
          fontSize: 16.horizontalScale,
          fontWeight: FontWeight.w500,
          color: AppColors.grey.shade800,
        ),
        centerTitle: true,
        actionsIconTheme: IconThemeData(color: AppColors.grey.shade800),
        iconTheme: IconThemeData(color: AppColors.grey.shade800),
      );

  @override
  CardTheme cardTheme = CardTheme(
    elevation: 0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radiusS)),
    color: AppColors.blue.shade200,
    margin: EdgeInsets.zero,
  );

  @override
  TextTheme textTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: 8.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColors.grey.shade800,
      decorationColor: AppColors.grey.shade800,
    ),
    displayMedium: TextStyle(
      fontSize: 10.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColors.grey.shade800,
      decorationColor: AppColors.grey.shade800,
    ),
    displaySmall: TextStyle(
      fontSize: 11.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColors.grey.shade800,
      decorationColor: AppColors.grey.shade800,
    ),
    headlineMedium: TextStyle(
      fontSize: 12.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColors.grey.shade800,
      decorationColor: AppColors.grey.shade800,
    ),
    headlineSmall: TextStyle(
      fontSize: 13.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColors.grey.shade800,
      decorationColor: AppColors.grey.shade800,
    ),
    titleLarge: TextStyle(
      fontSize: 22.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColors.grey.shade800,
      decorationColor: AppColors.grey.shade800,
    ),
    titleMedium: TextStyle(
      fontSize: 15.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColors.grey.shade800,
      decorationColor: AppColors.grey.shade800,
    ),
    titleSmall: TextStyle(
      fontSize: 16.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColors.grey.shade800,
      decorationColor: AppColors.grey.shade800,
    ),
    bodyLarge: TextStyle(
      fontSize: 14.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColors.grey.shade800,
      decorationColor: AppColors.grey.shade800,
    ),
    bodyMedium: TextStyle(
      fontSize: 18.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColors.grey.shade800,
      decorationColor: AppColors.grey.shade800,
    ),
    bodySmall: TextStyle(
      fontSize: 20.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColors.grey.shade800,
      decorationColor: AppColors.grey.shade800,
    ),
    labelLarge: TextStyle(
      fontSize: 26.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColors.grey.shade800,
      decorationColor: AppColors.grey.shade800,
    ),
    labelSmall: TextStyle(
      fontSize: 32.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColors.grey.shade800,
      decorationColor: AppColors.grey.shade800,
    ),
  );

  FloatingActionButtonThemeData floatingActionButtonThemeData = const FloatingActionButtonThemeData(
    backgroundColor: AppColors.primary,
    elevation: 0,
  );

  @override
  ElevatedButtonThemeData get elevatedButtonTheme => ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: AppColors.secondary,
          foregroundColor: AppColors.grey.shade800,
          disabledBackgroundColor: AppColors.grey.shade100,
          disabledForegroundColor: AppColors.grey.shade800,
          textStyle: TextStyle(
            color: AppColors.grey.shade800,
            fontWeight: FontWeight.w400,
            fontSize: 16.horizontalScale,
          ),
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusXS),
          ),
        ),
      );

  @override
  InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    fillColor: Colors.white,
    filled: true,
    contentPadding: const EdgeInsets.symmetric(horizontal: paddingL, vertical: paddingXXXXS),
    labelStyle: TextStyle(
      fontSize: 14.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColors.grey.shade800,
    ),
    errorStyle: TextStyle(
      fontSize: 11.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColors.red.shade800,
    ),
    counterStyle: TextStyle(
      fontWeight: FontWeight.w400,
      color: AppColors.grey.shade800,
      fontSize: 11.horizontalScale,
    ),
    hintStyle: TextStyle(
      fontWeight: FontWeight.w400,
      color: AppColors.grey.shade600,
      fontSize: 14.horizontalScale,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.blue.shade200),
      borderRadius: BorderRadius.circular(
        radiusS,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.blue.shade200),
      borderRadius: BorderRadius.circular(
        radiusS,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.blue.shade200),
      borderRadius: BorderRadius.circular(
        radiusS,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.red.shade800),
      borderRadius: BorderRadius.circular(
        radiusS,
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.blue.shade200),
      borderRadius: BorderRadius.circular(
        radiusS,
      ),
    ),
  );

  @override
  TextSelectionThemeData textSelectionThemeData = TextSelectionThemeData(
    cursorColor: AppColors.secondary,
    selectionColor: AppColors.secondary.withOpacity(0.2),
    selectionHandleColor: AppColors.secondary,
  );

  @override
  TextButtonThemeData textButtonThemeData = TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
      foregroundColor: WidgetStateProperty.all<Color>(AppColors.primary),
      shadowColor: WidgetStateProperty.all<Color>(Colors.transparent),
      overlayColor: WidgetStateProperty.all<Color>(Colors.transparent),
      textStyle: WidgetStateProperty.all<TextStyle>(
        TextStyle(
          color: AppColors.secondary,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w400,
          fontSize: 16.horizontalScale,
        ),
      ),
    ),
  );

  @override
  CheckboxThemeData checkboxThemeData = CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.primary;
      }
      return Colors.transparent;
    }),
    checkColor: WidgetStateProperty.all<Color?>(Colors.white),
    side: const BorderSide(width: 0.7, color: AppColors.primary),
    overlayColor: WidgetStateProperty.all<Color?>(AppColors.primary),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radiusXXXXS),
    ),
  );

  @override
  OutlinedButtonThemeData get outlinedButtonThemeData => OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: const BorderSide(color: AppColors.primary),
          padding: EdgeInsets.zero,
          disabledBackgroundColor: AppColors.grey.shade100,
          disabledForegroundColor: AppColors.grey.shade800,
          foregroundColor: AppColors.primary,
          textStyle: TextStyle(
            color: AppColors.primary,
            fontWeight: FontWeight.w400,
            fontSize: 16.horizontalScale,
          ),
          alignment: Alignment.center,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusXXS),
          ),
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

  @override
  Brightness get brightness => Brightness.light;

  @override
  ColorScheme get buttonColorScheme => const ColorScheme(
        primary: AppColors.primary,
        primaryContainer: AppColors.primaryContainer,
        secondary: AppColors.primaryContainer,
        secondaryContainer: AppColors.primaryContainer,
        surface: Colors.white,
        error: Colors.red,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: Colors.white,
        onError: Colors.white,
        brightness: Brightness.light,
      );

  @override
  Color get dividerColor => Colors.grey.shade400;

  @override
  DividerThemeData get dividerTheme => DividerThemeData(
        color: Colors.grey.shade400,
        space: 0,
      );

  @override
  Color get hintColor => AppColors.grey.shade600;

  @override
  Color get indicatorColor => AppColors.primary;

  @override
  Color get primaryColorDark => AppColors.primary;

  @override
  Color get primaryColorLight => AppColors.primary;

  @override
  ProgressIndicatorThemeData get progressIndicatorTheme => const ProgressIndicatorThemeData(color: AppColors.primary);

  @override
  RadioThemeData get radioThemeData => RadioThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return AppColors.grey.shade100;
          }
          return AppColors.primary;
        }),
        overlayColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return AppColors.grey.shade100;
          }
          return AppColors.primary;
        }),
      );

  @override
  Color get shadowColor => Colors.black26;

  @override
  TabBarTheme get tabBarTheme => TabBarTheme(
        dividerHeight: 0,
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
  PopupMenuThemeData get popupMenuThemeData => PopupMenuThemeData(
        color: Colors.white,
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusS),
        ),
        textStyle: TextStyle(
          fontSize: 14.horizontalScale,
          fontWeight: FontWeight.w400,
          color: AppColors.grey.shade800,
        ),
        labelTextStyle: WidgetStatePropertyAll(
          TextStyle(
            fontSize: 14.horizontalScale,
            fontWeight: FontWeight.w400,
            color: AppColors.grey.shade800,
          ),
        ),
        enableFeedback: true,
      );

  @override
  TimePickerThemeData get timePickerThemeData => TimePickerThemeData(
        padding: const EdgeInsets.only(left: paddingXL, right: paddingXL, top: paddingXL, bottom: paddingM),
        backgroundColor: AppColors.grey.shade100,
        dayPeriodColor: Colors.grey,
        dayPeriodTextStyle: TextStyle(
          fontSize: 20.horizontalScale,
          fontWeight: FontWeight.w500,
        ),
        dialBackgroundColor: Colors.white,
        dialHandColor: AppColors.primary,
        dialTextColor: AppColors.secondary,
        dialTextStyle: TextStyle(
          fontSize: 20.horizontalScale,
          fontWeight: FontWeight.w500,
        ),
        // elevation: ,
        entryModeIconColor: AppColors.primary,
        helpTextStyle: TextStyle(
          fontSize: 16.horizontalScale,
          fontWeight: FontWeight.w500,
          color: AppColors.primary,
        ),
        hourMinuteColor: Colors.white,
        // hourMinuteShape: ,
        hourMinuteTextColor: AppColors.secondary,
        hourMinuteTextStyle: TextStyle(
          fontSize: 20.horizontalScale,
          fontWeight: FontWeight.w500,
          color: Colors.green,
        ),
      );

  @override
  DatePickerThemeData get datePickerTheme => DatePickerThemeData(
        backgroundColor: AppColors.grey.shade100,
        headerBackgroundColor: AppColors.grey.shade100,
        headerForegroundColor: AppColors.primary,
        yearForegroundColor: WidgetStatePropertyAll(AppColors.grey.shade800),
      );
}
