import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';

class DynamicLink {
  static DynamicLink? _instance;
  bool hasListener = false;

  DynamicLink._();

  static DynamicLink get instance {
    _instance ??= DynamicLink._();
    return _instance!;
  }

  Future<void> getAndListenToDynamicLink() async {
    try {
      if (hasListener) return;
      hasListener = true;
      final appLinks = AppLinks();
      appLinks.uriLinkStream.listen((uri) {
        print('appLinks: ${uri.host}');
        _onComeFromDynamicLink(uri);
      });
    } catch (e) {
      debugPrintStack(label: e.toString());
    }
  }

  void _onComeFromDynamicLink(Uri deepLink) async {
    try {} catch (e) {
      debugPrint('onComeFromDynamicLink.instance.onLink Error: $e');
      rethrow;
    }
  }

}
