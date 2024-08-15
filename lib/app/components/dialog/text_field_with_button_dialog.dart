import 'package:flutter/material.dart';
import 'package:flutter_base_project/app/components/button/app_outline_button.dart';
import 'package:flutter_base_project/app/constants/other/padding_and_radius_size.dart';
import 'package:flutter_base_project/app/theme/text_style/text_style.dart';
import 'package:flutter_base_project/core/i10n/i10n.dart';
import 'package:flutter_base_project/app/navigation/route/route_factory.dart';
import 'dialog_widget.dart';

class TextFieldWithButtonDialog<T> extends DialogWidget<T> {
  final String text;
  final Function()? onTapYesBtn;
  final String? yesBtnText;
  final Function()? onTapNoBtn;
  final String? noBtnText;
  final bool? barrierDismissible;
  final ValueChanged<String>? onChangedText;

  const TextFieldWithButtonDialog({
    super.key,
    required this.text,
    this.onTapYesBtn,
    this.yesBtnText,
    this.onTapNoBtn,
    this.noBtnText,
    this.barrierDismissible,
    this.onChangedText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          text,
          style: s16w500Dark,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: paddingL),
        TextField(
          decoration: InputDecoration(
            enabledBorder: Theme.of(MyRouteFactory.context).inputDecorationTheme.enabledBorder!.copyWith(
                  borderSide: BorderSide(color: Theme.of(context).colorScheme.onSurface),
                ),
            focusedBorder: Theme.of(MyRouteFactory.context).inputDecorationTheme.focusedBorder!.copyWith(
                  borderSide: const BorderSide(width: 0.5),
                ),
          ),
          onChanged: onChangedText,
        ),
        const SizedBox(height: paddingXXL),
        Row(
          children: [
            Expanded(
              child: AppOutlineButton(
                padding: EdgeInsets.zero,
                radius: radiusXXXS,
                onTap: onTapNoBtn ?? () => Navigator.of(MyRouteFactory.context, rootNavigator: true).maybePop(),
                txt: noBtnText ?? AppLocalization.getLabels.cancelBtnText,
              ),
            ),
            const SizedBox(width: paddingM),
            Expanded(
              child: AppOutlineButton(
                padding: EdgeInsets.zero,
                radius: radiusXXXS,
                onTap: onTapYesBtn ?? () => Navigator.of(MyRouteFactory.context, rootNavigator: true).maybePop(),
                txt: yesBtnText ?? AppLocalization.getLabels.saveBtnText,
              ),
            ),
          ],
        )
      ],
    );
  }
}
