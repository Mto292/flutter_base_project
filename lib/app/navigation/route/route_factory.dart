import 'package:dop_logger/dop_logger.dart';
import 'package:flutter/cupertino.dart';
import 'route.dart';

class MyRouteFactory {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static final MyRouteFactory _instance = MyRouteFactory._();

  final main = _RouteGenerate(mainRoutesMap);

  MyRouteFactory._();

  factory MyRouteFactory() => _instance;

  static BuildContext get context => _instance.navigatorKey.currentContext!;

  /// Spalsh ekrsanına giderek uygulamayı tekrar başlatır
  Future<void> restartApp() async =>
      await navigatorKey.currentState!.pushNamedAndRemoveUntil(MainScreensEnum.init.path, (_) => false);
}

class _RouteGenerate {
  final Map<String, PageRouteFun> map;

  _RouteGenerate(this.map);

  Route<dynamic>? onGenerateRoute(RouteSettings setting) {
    NavigationLogger.instance.log(setting);
    final _map = map[setting.name];
    return _map?.call(setting);
  }
}
