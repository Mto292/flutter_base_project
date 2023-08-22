import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_base_project/app/navigation/route/route.dart';
import 'package:get/get.dart';
import 'package:flutter_base_project/app/extensions/context_extension.dart';
import 'package:flutter_base_project/app/libs/firebase/firebase_messaging_service.dart';
import 'package:flutter_base_project/core/i10n/i10n.dart';
import '../../../../app/components/message/error_message_dialog.dart';
import '../../../../app/controllers/controller.dart';
import 'package:flutter_base_project/app/controllers/general/session_service.dart';
import '../../../../app/libs/notification/local_notification_handler.dart';

class SplashController extends GetxController {
  final GlobalKey scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void onInit() {
    super.onInit();
    init();
  }

  @override
  void onReady() {
    super.onReady();
    ready();
  }

  BuildContext get context => scaffoldKey.currentContext!;

  void init() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarDividerColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
      ),
    );

    /// telefonu çevirdiğimiz de sayfanın rotate olmaması için eklendi.
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }

  Future<void> ready() async {
    final Future splashDelay = Future.delayed(const Duration(seconds: 2));
    await Get.deleteAll();
    LocalNotificationHandler.instance;
    Get.put(SessionService());
    Get.put(Controller());

    if (!await context.checkInternet()) {
      tryAgainMessage(AppLocalization.getLabels.noInternetErrorMessage);
      return;
    }

    try {
      await Firebase.initializeApp();
      FirebaseMessagingService.instance.listenToNotification();
    } catch (e) {}

    try {
      splashDelay.whenComplete(
        () => Navigator.pushNamedAndRemoveUntil(context, MainScreensEnum.landingScreen.path, (route) => false),
      );
    } catch (e) {
      debugPrint(e.toString());
      tryAgainMessage(AppLocalization.getLabels.defaultErrorMessage);
    }
  }

  /// Tekrar yükle popup
  tryAgainMessage(String message) {
    ErrorMessageDialog(
      text: message,
      buttonText: AppLocalization.getLabels.tryAgainBtnText,
      onTap: () {
        Navigator.of(context, rootNavigator: true).pop();
        ready();
      },
    ).show(barrierDismissible: false);
  }
}
