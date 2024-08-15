import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../app/components/app_bar/app_bar.dart';
import '../controller/landing_controller.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LandingController>();
    return Scaffold(
      key: controller.scaffoldKey,
      appBar: const MyAppBar(
        title: 'Appbar',
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
