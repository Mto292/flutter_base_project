import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../app/components/app_bar/app_bar.dart';
import '../Controller/register_controller.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<RegisterController>();
    return Scaffold(
      key: controller.scaffoldKey,
      appBar: MyAppBar(),
      body: Container(),
    );
  }
}
