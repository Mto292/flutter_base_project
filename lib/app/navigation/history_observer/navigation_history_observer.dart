import 'package:flutter/material.dart';

/// Ana Route nın route listeyi tutar
class NavigationHistoryObserver extends NavigatorObserver {
  final List<Route<dynamic>?> history = <Route<dynamic>?>[];

  static final NavigationHistoryObserver _instance = NavigationHistoryObserver();

  static NavigationHistoryObserver get instance {
    return _instance;
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _instance.history.removeLast();
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _instance.history.add(route);
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _instance.history.remove(route);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    int oldRouteIndex = _instance.history.indexOf(oldRoute);
    _instance.history.replaceRange(oldRouteIndex, oldRouteIndex + 1, [newRoute]);
  }
}
