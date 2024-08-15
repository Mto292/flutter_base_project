import 'package:flutter/material.dart';
import 'package:flutter_base_project/core/i10n/i10n.dart';
import '../../constants/other/padding_and_radius_size.dart';
import '../../constants/assets/assets.gen.dart';
import 'package:flutter_base_project/app/navigation/route/route_factory.dart';
import '../../theme/text_style/text_style.dart';
import '../button/app_outline_button.dart';
import '../dialog/dialog_widget.dart';

class ErrorMessageDialog<T> extends DialogWidget<T> {
  final String text;
  final Function()? onTap;
  final String? buttonText;

  const ErrorMessageDialog({
    super.key,
    required this.text,
    this.onTap,
    this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: paddingM),
        Assets.icons.outlineErrorIcon.svg(
          color: Theme.of(context).colorScheme.secondary,
          height: 63,
        ),
        const SizedBox(height: paddingM),
        Text(
          text,
          style: s16w500Dark,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: paddingM),
        AppOutlineButton(
          radius: radiusXXXS,
          padding: EdgeInsets.zero,
          contentPadding: const EdgeInsets.symmetric(horizontal: paddingXL, vertical: paddingXS),
          onTap: onTap ?? () => Navigator.of(MyRouteFactory.context, rootNavigator: true).maybePop(),
          txt: buttonText ?? AppLocalization.getLabels.tryAgainBtnText,
        ),
        const SizedBox(height: paddingM),
      ],
    );
  }
}
