import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';

class DynamicLink {
  static DynamicLink? _instance;

  DynamicLink._();

  static DynamicLink get instance {
    _instance ??= DynamicLink._();
    return _instance!;
  }

  Future<void> getAndListenToDynamicLink() async {
    try {
      final PendingDynamicLinkData? initialLink = await FirebaseDynamicLinks.instance.getInitialLink();
    } catch (e) {
      debugPrint('getAndListenToDynamicLink Error');
    }
  }
}
