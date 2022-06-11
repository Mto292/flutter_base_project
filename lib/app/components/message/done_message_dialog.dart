import '../dialog/simple_dialog.dart';

class DoneMessageDialog {
  static Future show({String? text, Function()? onTap, String? buttonText}) {
    return AppSimpleDialog().show(
      children: [],
    );
  }
}
