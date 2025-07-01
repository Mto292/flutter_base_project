import 'dart:async';
import 'package:app_logger/app_logger.dart';
import 'package:flutter/material.dart';
import '../../app.dart';
import '../../libs/locale_manager/locale_manager.dart';

/// Tüm proje ortamları bu bootstrap Fon. nunu çağırmakta
Future<void> bootstrap(String lokiUrl, App app) async {
  await AppLogger.init(
    baseUrl: lokiUrl,
    httpLog: false,
    navigationLog: false,
    appId: 'flutter base project',
    headers: {},
    appRunner: () async {
      WidgetsFlutterBinding.ensureInitialized();
      await LocaleManager.cacheInit();
      runApp.call(app);
    },
  );
}
