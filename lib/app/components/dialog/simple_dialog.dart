import 'package:flutter/material.dart';
import '../../constants/app/padding_and_radius_size.dart';
import '../../navigation/screens.dart';
import 'app_dialog.dart';

class AppSimpleDialog {
  Future show(
      {Widget? title,
      List<Widget>? children,
      EdgeInsets? padding,
      bool? barrierDismissible}) {
    return AppDialog().showDynamicDialog(
      barrierColor: Colors.black45,
      barrierDismissible: barrierDismissible,
      widget: SimpleDialog(
        title: title,
        titlePadding: EdgeInsets.zero,
        backgroundColor: Theme.of(Screens.context).cardTheme.color,
        contentPadding: padding ?? const EdgeInsets.all(paddingM),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusL)),
        children: children,
      ),
    );
  }
}
