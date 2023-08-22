import 'dart:developer';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import '../../constants/app/app_constant.dart';
import '../../navigation/route/route_factory.dart';

/// Ekran boyutlarını tutmak için yazıldı
class SizeConfig {
  /// static MediaQueryData __mediaQueryData = MediaQueryData.fromWindow(ui.window);
  static double _statusBarHeight = 0;
  static double _screenWidth = 0;
  static double _screenHeight = 0;

  static MediaQueryData get _mediaQueryData {
    final ctx = MyRouteFactory().navigatorKey.currentContext;
    if (ctx == null) return MediaQueryData.fromWindow(ui.window);

    return MediaQuery.of(ctx);
  }

  static double get screenWidth =>
      _screenWidth = _mediaQueryData.size.width == 0 ? _screenWidth : _mediaQueryData.size.width;

  static double get screenHeight =>
      _screenHeight = _mediaQueryData.size.height == 0 ? _screenHeight : _mediaQueryData.size.height;

  static double get blockSizeHorizontal => screenWidth / 100;

  static double get blockSizeVertical => screenHeight / 100;

  static double get _safeAreaHorizontal => _mediaQueryData.padding.left + _mediaQueryData.padding.right;

  static double get _safeAreaVertical => _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;

  static double get safeBlockHorizontal => (screenWidth - _safeAreaHorizontal) / 100;

  static double get safeBlockVertical => (screenHeight - _safeAreaVertical) / 100;

  static double get statusBarHeight =>
      _statusBarHeight = _mediaQueryData.padding.top != 0 ? _mediaQueryData.padding.top : _statusBarHeight;

  static EdgeInsets get safeAreaPadding => _mediaQueryData.padding;

  static double get devicePixelRatio => _mediaQueryData.devicePixelRatio;

  static double get appBarHeight => kToolbarHeight;

  static double get screenHeightTopSafeArea => screenHeight - statusBarHeight;

  static void setScreenSizeFromConstraints(BoxConstraints constraints) {
    _screenWidth = constraints.maxWidth == 0 ? designScreenWidth : constraints.maxWidth;
    _screenHeight = constraints.maxHeight == 0 ? designScreenHeight : constraints.maxHeight;
    log('${SizeConfig.screenWidth}x${SizeConfig.screenHeight}', name: 'Screen local pixel');
  }
}
