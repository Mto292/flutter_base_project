import 'package:flutter/material.dart';
import 'package:flutter_base_project/app/extensions/widgets_scale_extension.dart';
import '../../../../app/constants/other/padding_and_radius_size.dart';
import '../controller/splash_controller.dart';

class Splash extends StatelessWidget {
  final SplashController controller;

  const Splash({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        scaffoldBackgroundColor: Theme.of(context).colorScheme.primary,
      ),
      child: Scaffold(
        extendBody: true,
        key: controller.scaffoldKey,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              FlutterLogo(size: 196.horizontalScale),
              const SizedBox(height: paddingXXXL),
              const CircularProgressIndicator(
                backgroundColor: Colors.transparent,
                color: Colors.white,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
