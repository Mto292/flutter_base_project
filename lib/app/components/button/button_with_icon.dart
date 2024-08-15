import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_base_project/app/constants/other/padding_and_radius_size.dart';
import 'package:flutter_base_project/app/extensions/widgets_scale_extension.dart';

import '../../theme/text_style/text_style.dart';
import 'base_button.dart';

class ButtonWithIcon extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final String svgIcon;
  final EdgeInsets? padding;

  const ButtonWithIcon({
    Key? key,
    this.onTap,
    required this.text,
    required this.svgIcon,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseButton(
      padding: padding,
      contentPadding: const EdgeInsets.symmetric(vertical: paddingS, horizontal: paddingXXXXS),
      widget: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            svgIcon,
            height: 28.horizontalScale,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          const SizedBox(width: paddingM),
          Text(
            text,
            style: s16w400Dark.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
