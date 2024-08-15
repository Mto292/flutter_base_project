import 'package:flutter/material.dart';
import 'package:flutter_base_project/app/theme/text_style/text_style.dart';
import '../../constants/other/padding_and_radius_size.dart';

/// Standart turkcell yatay button
/// Dış cizgili
class AppOutlineButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String? txt;
  final Widget? widget;
  final EdgeInsets? padding;
  final EdgeInsets? contentPadding;
  final ButtonStyle? style;
  final Key? btnKey;
  final double? radius;
  final Color? borderColor;
  final Color? textColor;

  const AppOutlineButton({
    Key? key,
    required this.onTap,
    this.txt = '',
    this.widget,
    this.padding,
    this.contentPadding,
    this.style,
    this.btnKey,
    this.radius,
    this.borderColor,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: btnKey,
      padding: padding ??
          const EdgeInsets.only(
            left: paddingM,
            right: paddingM,
            bottom: paddingM,
          ),
      child: OutlinedButton(
        onPressed: onTap,
        style: style ??
            OutlinedButtonTheme.of(context).style!.copyWith(
                  side: borderColor == null
                      ? null
                      : WidgetStateProperty.all<BorderSide>(
                          BorderSide(color: borderColor!),
                        ),
                  shape: radius == null
                      ? null
                      : WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(radius!),
                          ),
                        ),
                ),
        child: Padding(
          padding: contentPadding ?? const EdgeInsets.all(paddingM),
          child: widget ??
              Text(
                txt!,
                style: s16w400Dark.copyWith(color: textColor),
              ),
        ),
      ),
    );
  }
}
