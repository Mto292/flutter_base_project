import 'dart:developer';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import '../../screen/auth/register_screen/register_screen.dart';
import '../../screen/landing/splash_screen/splash_screen.dart';
import 'page_navigation.dart';

class Screens with PageNavigation {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  static Screens? _screens;
  late final _MainScreens main;

  Screens._() {
    main = _MainScreens();
  }

  static Screens get instance {
    _screens ??= Screens._();
    return _screens!;
  }

  static BuildContext get context => _screens!.navigatorKey.currentContext!;

  restartApp() async {
    await Get.deleteAll();
    navigatorKey.currentState!.pushNamedAndRemoveUntil(main.init, (route) => false);
  }
}

class _MainScreens with PageNavigation {
  final String init = '/';
  final String registerScreen = _getMainScreenName('registerScreen');

  Route<dynamic>? onGenerateRoute(RouteSettings setting) {
    if (setting.name == init) {
      return goToPage(const SplashScreen(), setting);
    } else if (setting.name == registerScreen) {
      return goToPage(RegisterScreen(), setting);
    } else {
      return returnUnknownPageRoute(setting);
    }
  }
}

String _getMainScreenName(String screenName) {
  var value = '/$screenName';
  log(value, name: 'received_return_request_screen Name In Route');
  return value;
}
