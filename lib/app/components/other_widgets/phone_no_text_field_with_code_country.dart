import 'package:flutter/material.dart';
import 'package:text_mask/text_mask.dart';
import 'package:flutter_base_project/app/extensions/widgets_scale_extension.dart';
import '../../../core/i10n/i10n.dart';
import '../../constants/assets/assets.dart';
import '../../constants/assets/assets.gen.dart';
import '../../constants/other/padding_and_radius_size.dart';
import '../../theme/color/app_colors.dart';
import '../../theme/text_style/text_style.dart';

class PhoneNoTextFieldWithCodeCountry extends StatelessWidget {
  final TextEditingController? controller;
  final GestureTapCallback? onTap;
  final String countryCode;
  final String countryCodeNo;
  final TextInputAction? textInputAction;
  final FormFieldValidator<String>? validator;
  final bool? enabled;
  final FocusNode? focusNode;

  const PhoneNoTextFieldWithCodeCountry({
    Key? key,
    required this.controller,
    required this.onTap,
    required this.countryCode,
    required this.countryCodeNo,
    this.textInputAction,
    this.validator,
    this.enabled,
    this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      controller: controller,
      enabled: enabled,
      validator: validator,
      autofillHints: const [AutofillHints.telephoneNumberNational],
      textInputAction: textInputAction,
      keyboardType: TextInputType.phone,
      inputFormatters: [TextMask(pallet: '### ### ## ##')],
      decoration: InputDecoration(
        label: Row(children: [
          Text(AppLocalization.getLabels.telNoTextFieldText),
          Icon(
            Icons.star,
            color: AppColors.grey.shade800.withOpacity(0.6),
            size: 8,
          ),
        ]),
        border: InputBorder.none,
        prefixIcon: InkWell(
          onTap: onTap,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Padding(
              padding: const EdgeInsets.only(bottom: paddingXXXXXS),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: paddingM.horizontalScale),
                child: Row(
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 32.verticalScale),
                      child: Image.asset(
                        getFlagPath(countryCode),
                        height: 16.verticalScale,
                      ),
                    ),
                    SizedBox(width: paddingXXXXS.horizontalScale),
                    Text(
                      countryCodeNo,
                      textAlign: TextAlign.center,
                      style: s14w400Dark,
                    ),
                    SizedBox(width: paddingXXXXS.horizontalScale),
                    Assets.icons.arrowDownIosIcon.svg(
                      width: 10.horizontalScale,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
