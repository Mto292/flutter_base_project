import 'dart:io';
import 'package:dop_flutter_base_project/app/components/message/error_message_dialog.dart';
import 'package:dop_flutter_base_project/app/extensions/context_extension.dart';
import 'package:dop_flutter_base_project/app/navigation/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../app/app_info.dart';
import '../../../../app/constants/app/app_constant.dart';
import '../../../../app/controllers/general/session_service.dart';
import '../../../../core/i10n/i10n.dart';

class SplashController extends GetxController {
  final GlobalKey scaffoldKey = GlobalKey();

  @override
  void onInit() {
    super.onInit();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  @override
  void onReady() {
    super.onReady();
    _init();
  }

  Future<void> _init() async {
    final context = scaffoldKey.currentContext!;
    final future = Future.delayed(const Duration(seconds: 2));
    final sessionService = Get.put(SessionService());

    /// Internet kontrol
    if (!await checkInternet()) return;

    /// version kontrol
    try {
      final forceUpdate = false;
      final version = await _getRemoteVersion();
      if (forceUpdate && await forceUpdateControl(version)) return;
    } catch (e) {}

    try {
      /// Kullanıcı login mi
      if (sessionService.isUserLogin()) {
        await _getUser(sessionService);
      }

      future.whenComplete(
        () => Navigator.pushNamedAndRemoveUntil(context, Screens.instance.main.registerScreen, (route) => false),
      );
    } catch (e) {
      debugPrint(e.toString());
      tryAgainMessage(AppLocalization.getLabels.defaultErrorMessage);
    }
  }

  Future<void> _getUser(SessionService sessionService) async {}

  Future<String> _getRemoteVersion() async {
    return '1.0.0';
  }

  /// Tekrar yükle popup
  tryAgainMessage(String message) {
    ErrorMessageDialog.show(
      text: message,
      barrierDismissible: false,
      buttonText: AppLocalization.getLabels.tryAgainBtnText,
      onTap: () {
        Navigator.pop(scaffoldKey.currentContext!);
        _init();
      },
    );
  }

  /// Internet control
  Future<bool> checkInternet() async {
    final context = scaffoldKey.currentContext!;
    if (await context.checkInternet(context)) {
      return true;
    } else {
      ErrorMessageDialog.show(
        text: 'İnternet bağlantınızı kontrol ediniz.',
        buttonText: 'Tekrar Dene',
        onTap: _init,
      );
      return false;
    }
  }

  /// versiyon bakıp Zorunlu güncelleme istemektedir.
  Future<bool> forceUpdateControl(String version) async {
    try {
      final info = await AppInfo.instance();
      int remoteVersion = int.parse(version.replaceAll('.', ''));
      int localVersion = int.parse(info.version.replaceAll('.', ''));

      /// Remote version local versiona eşitise veya küçük ise
      if (remoteVersion <= localVersion) return false;

      final String url;
      if (Platform.isAndroid) {
        url = googleMarketUrl;
      } else {
        url = appleMarketUrl;
      }

      ErrorMessageDialog.show(
        text: AppLocalization.getLabels.updateAppFromGooglePlayDialogText,
        barrierDismissible: false,
        buttonText: AppLocalization.getLabels.updateBtnText,
        onTap: () => launchUrl(Uri.parse(url)),
      );
      return true;
    } catch (e) {
      return false;
    }
  }
}
