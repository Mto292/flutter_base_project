import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'view/splash.dart';
import 'controller/splash_controller.dart';

/// Splash ekranı
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (SplashController controller) {
        return Splash(
          controller: controller,
        );
      },
    );
  }
}
