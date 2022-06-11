import '../dialog/simple_dialog.dart';

class QuestionMessageDialog {
  static Future show(
      {required String text,
      Function()? onTapYesBtn,
      String? yesBtnText,
      Function()? onTapNoBtn,
      String? noBtnText,
      bool? barrierDismissible}) {
    return AppSimpleDialog().show(
      barrierDismissible: barrierDismissible,
      children: [],
    );
  }
}
