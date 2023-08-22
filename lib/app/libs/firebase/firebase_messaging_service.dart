import 'dart:async';
import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/app/libs/app/app_info.dart';
import '../../constants/enum/general_enum.dart';
import '../notification/local_notification_handler.dart';

class FirebaseMessagingService {
  late final FirebaseMessaging messaging;
  static FirebaseMessagingService? _instance;

  FirebaseMessagingService._init() {
    messaging = FirebaseMessaging.instance;
  }

  static FirebaseMessagingService get instance {
    _instance ??= FirebaseMessagingService._init();
    return _instance!;
  }

  listenToNotification() async {
    await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    unawaited(_postFCMToken());
    FirebaseMessaging.onMessage.listen(_showNotification);
    FirebaseMessaging.onMessageOpenedApp.listen((event) {});
    // FirebaseMessaging.onBackgroundMessage(_showNotification);
  }

  Future<void> _showNotification(RemoteMessage message) async {
    if (message.notification != null) {
      LocalNotificationHandler.instance.showNotification(
        title: message.notification!.title ?? '',
        body: message.notification!.body,
      );
    }
  }

  _postFCMToken() async {
    final token = await messaging.getToken();
    if (token == null) return;
    debugPrint('FCM Token: $token');

    final DeviceType platform;
    if (Platform.isIOS) {
      platform = DeviceType.IOS;
    } else {
      platform = DeviceType.ANDROID;
    }

    await AppInfo.instance().then((value) {
      /*unawaited(
          General().postFirebaseToken(
          platform,
          token,
          value.deviceId,
        ),
      ),*/
    });
  }
}
