import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotificationHandler {
  late final FlutterLocalNotificationsPlugin? flutterLocalNotificationsPlugin;
  int notificationId = 0;
  static LocalNotificationHandler? _instance;

  LocalNotificationHandler._init() {
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    if (Platform.isIOS) {
      flutterLocalNotificationsPlugin!
          .resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
            alert: true,
            badge: true,
            sound: true,
          );
    }
    _initializeOtherPlatform();
  }

  static LocalNotificationHandler get instance {
    _instance ??= LocalNotificationHandler._init();
    return _instance!;
  }

  Future<void> _initializeOtherPlatform() async {
    final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    const initializationSettingsDarwin = DarwinInitializationSettings(
      requestAlertPermission: false,
      requestSoundPermission: false,
      requestBadgePermission: false,
      requestProvisionalPermission: false,
      requestCriticalPermission: false,
    );
    const InitializationSettings initializationSettings = InitializationSettings(
      android: AndroidInitializationSettings('app_icon'),
      iOS: initializationSettingsDarwin,
    );
    flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: _onTapNotification,
    );
  }

  void _onTapNotification(payload) async {
    debugPrint('selectNotification payload: $payload');
  }

  Future<void> showNotification({required String title, String? body}) async {
    notificationId++;
    flutterLocalNotificationsPlugin!.show(
      notificationId,
      title,
      body,
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'general',
          'General',
          channelDescription: 'General',
          importance: Importance.max,
          priority: Priority.high,
          ticker: 'ticker',
          visibility: NotificationVisibility.public,
          playSound: true,
        ),
        iOS: DarwinNotificationDetails(
          presentAlert: true,
          presentBadge: true,
          presentSound: true,
          interruptionLevel: InterruptionLevel.active,
          sound: 'default',
        ),
      ),
      payload: 'item $notificationId',
    );
  }
}
