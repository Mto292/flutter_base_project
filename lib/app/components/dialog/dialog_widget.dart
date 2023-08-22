import 'package:flutter/material.dart';
import 'package:flutter_base_project/app/extensions/widget_extension.dart';

abstract class DialogWidget<T> extends StatelessWidget {
  final EdgeInsets? padding;

  const DialogWidget({Key? key, this.padding}) : super(key: key);

  Future<T?> show({bool? barrierDismissible}) => openSimpleDialog<T>(
        padding: padding,
        barrierDismissible: barrierDismissible,
      );

  @override
  Widget build(BuildContext context);
}
