import 'package:flutter/material.dart';
import 'package:flutter_base_project/app/extensions/widget_extension.dart';

abstract class BottomSheetWidget<T> extends StatelessWidget {
  final Color? barrierColor;
  final Color? backgroundColor;
  final bool? barrierDismissible;
  final ShapeBorder? shape;
  final BoxConstraints? constraints;
  final bool? isScrollControlled;
  final bool? useRootNavigator;
  final bool? isDismissible;
  final bool? enableDrag;

  const BottomSheetWidget({
    Key? key,
    this.barrierColor,
    this.barrierDismissible,
    this.shape,
    this.constraints,
    this.isScrollControlled,
    this.useRootNavigator,
    this.isDismissible,
    this.enableDrag,
    this.backgroundColor,
  }) : super(key: key);

  Future<T?> showBottomSheet({BuildContext? context}) => openBottomSheet(
        context: context,
        barrierColor: barrierColor,
        backgroundColor: backgroundColor,
        barrierDismissible: barrierDismissible,
        shape: shape,
        constraints: constraints,
        isScrollControlled: isScrollControlled,
        useRootNavigator: useRootNavigator,
        isDismissible: isDismissible,
        enableDrag: enableDrag,
      );

  @override
  Widget build(BuildContext context);
}
