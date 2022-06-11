import 'package:flutter/material.dart';

import '../../navigation/screens.dart';

/// Base Dialog
class AppDialog {
  Future showDynamicDialog(
      {required Widget widget, bool? barrierDismissible, Color? barrierColor}) {
    return showDialog(
      barrierDismissible: barrierDismissible ?? true,
      barrierColor: barrierColor,
      context: Screens.context,
      builder: (BuildContext context) {
        return widget;
      },
    );
  }
}
