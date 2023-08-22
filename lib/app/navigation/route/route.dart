import 'package:flutter/material.dart' show PageRoute, RouteSettings;
import 'package:flutter_base_project/app/navigation/route/page_route_builder.dart';
import 'package:flutter_base_project/screens/screens.dart';

typedef PageRouteFun = PageRoute Function(RouteSettings);

enum MainScreensEnum {
  init('/'),
  landingScreen('/landingScreen');

  const MainScreensEnum(this.path);

  final String path;
}

Map<String, PageRouteFun> mainRoutesMap = {
  MainScreensEnum.init.path: (_) => goToPage(const SplashScreen(), _),
  MainScreensEnum.landingScreen.path: (_) => goToPage(const LandingScreen(), _),
};
