import 'package:flutter/material.dart';
import 'package:flutter_base_project/app/navigation/route/route_factory.dart';
import 'package:flutter_base_project/core/i10n/i10n.dart';
import '../../constants/assets/assets.gen.dart';
import '../../constants/other/padding_and_radius_size.dart';
import '../../theme/text_style/text_style.dart';
import '../button/app_outline_button.dart';
import '../dialog/dialog_widget.dart';

class DoneMessageDialog<T> extends DialogWidget<T> {
  final String text;
  final Function()? onTap;
  final String? buttonText;

  const DoneMessageDialog({
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
        Assets.icons.outlineDoneIcon.svg(height: 63),
        const SizedBox(height: paddingM),
        Column(
          children: [
            Text(
              text,
              style: s18w500Dark,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: paddingM),
          ],
        ),
        AppOutlineButton(
          radius: radiusXXXS,
          padding: EdgeInsets.zero,
          contentPadding: const EdgeInsets.symmetric(horizontal: paddingXXXL, vertical: paddingXS),
          onTap: onTap ?? () => Navigator.of(MyRouteFactory.context, rootNavigator: true).maybePop(),
          txt: buttonText ?? AppLocalization.getLabels.closeBtnText,
        ),
        const SizedBox(height: paddingM),
      ],
    );
  }
}
