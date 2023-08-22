import 'package:flutter/material.dart';
import '../../constants/other/padding_and_radius_size.dart';

/// Standart turkcell yatay button
class BaseButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String? txt;
  final Widget? widget;
  final EdgeInsets? padding;
  final EdgeInsets? contentPadding;
  final ButtonStyle? style;
  final TextStyle? textStyle;

  const BaseButton({
    Key? key,
    this.onTap,
    this.txt = '',
    this.widget,
    this.padding,
    this.contentPadding,
    this.style,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.only(left: paddingM, right: paddingM, bottom: paddingM),
      child: ElevatedButton(
        onPressed: onTap,
        style: style,
        child: Padding(
          padding: contentPadding ?? const EdgeInsets.symmetric(vertical: paddingM),
          child: widget ?? Text(txt!, style: textStyle),
        ),
      ),
    );
  }
}
