import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import '../../../screens/unknown_route_screen/unknown_route_screen.dart';


/// Page Animasyonlarını ve PageRouteNavigate i bu sınıfta yazmaktayız.
/// [goToPageWithOutAnimation] Animasyonsuz ekran  geçişleri için yazıldı.
/// [goToPage] Platforma göre istediğimiz ekran gitmek için yazıldı.
/// [returnUnknownPageRoute] Ismi route de kayıtlı olmayan ekranlara gidersek gösterilen ekranı döndürmekte.
PageRoute goToPageWithOutAnimation(Widget screen, RouteSettings settings) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => screen,
    settings: settings,
    transitionDuration: const Duration(milliseconds: 0),
    reverseTransitionDuration: const Duration(milliseconds: 0),
  );
}

PageRoute goToPage(Widget screen, RouteSettings settings) {
  switch (defaultTargetPlatform) {
    case TargetPlatform.iOS:
      return CupertinoPageRoute(
        builder: (BuildContext context) => screen,
        settings: settings,
      );
    default:
      return goToPageWithOutAnimation(
        screen,
        settings,
      );
  }
}

PageRoute returnUnknownPageRoute(RouteSettings settings) {
  return goToPage(const UnknownRouteScreen(), settings);
}
