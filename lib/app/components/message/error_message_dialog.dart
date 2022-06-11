import '../dialog/simple_dialog.dart';

class ErrorMessageDialog {
  static Future show({required String text, Function()? onTap, String? buttonText, bool? barrierDismissible}) {
    return AppSimpleDialog().show(
      barrierDismissible: barrierDismissible,
      children: [],
    );
  }
}
