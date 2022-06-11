import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../app/navigation/size_config.dart';
import 'Controller/register_controller.dart';
import 'View/register.dart';

/// Üye olma ekranı
///
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return GetBuilder(
      init: RegisterController(),
      builder: (GetxController controller) {
        return Register();
      },
    );
  }
}
