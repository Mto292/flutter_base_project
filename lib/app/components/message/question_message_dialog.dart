import 'package:flutter/material.dart';
import 'package:flutter_base_project/app/extensions/widgets_scale_extension.dart';
import 'package:flutter_base_project/core/i10n/i10n.dart';
import '../../constants/other/padding_and_radius_size.dart';
import '../../constants/assets/assets.gen.dart';
import 'package:flutter_base_project/app/navigation/route/route_factory.dart';
import '../../theme/text_style/text_style.dart';
import '../button/app_outline_button.dart';
import '../dialog/dialog_widget.dart';

class QuestionMessageDialog<T> extends DialogWidget<T> {
  final String text;
  final Function()? onTapYesBtn;
  final String? yesBtnText;
  final Function()? onTapNoBtn;
  final String? noBtnText;

  const QuestionMessageDialog({
    super.key,
    required this.text,
    this.onTapYesBtn,
    this.yesBtnText,
    this.onTapNoBtn,
    this.noBtnText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: paddingM),
        Assets.icons.outlineErrorIcon.svg(
          color: Theme.of(context).colorScheme.secondary,
          height: 63.horizontalScale,
        ),
        const SizedBox(height: paddingM),
        Text(
          text,
          style: s16w500Dark,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: paddingM),
        Row(
          children: [
            Expanded(
              child: AppOutlineButton(
                radius: radiusXXXS,
                padding: const EdgeInsets.only(),
                contentPadding: const EdgeInsets.symmetric(vertical: paddingM),
                onTap: onTapNoBtn ?? () => Navigator.of(MyRouteFactory.context, rootNavigator: true).maybePop(false),
                txt: noBtnText ?? AppLocalization.getLabels.noBtnText,
              ),
            ),
            const SizedBox(width: paddingM),
            Expanded(
              child: AppOutlineButton(
                radius: radiusXXXS,
                contentPadding: const EdgeInsets.symmetric(vertical: paddingM),
                padding: const EdgeInsets.only(),
                onTap: onTapYesBtn ?? () => Navigator.of(MyRouteFactory.context, rootNavigator: true).maybePop(true),
                txt: yesBtnText ?? AppLocalization.getLabels.yesBtnText,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
