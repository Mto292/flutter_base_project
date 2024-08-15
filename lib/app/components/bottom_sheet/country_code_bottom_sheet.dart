import 'package:flutter/material.dart';
import 'package:flutter_base_project/app/extensions/widget_extension.dart';
import 'package:flutter_base_project/app/extensions/widgets_scale_extension.dart';
import '../../../core/i10n/i10n.dart';
import '../../constants/assets/assets.dart';
import '../../constants/other/country_code.dart';
import '../../constants/other/padding_and_radius_size.dart';
import '../../libs/app/size_config.dart';
import '../../theme/text_style/text_style.dart';
import '../app_bar/app_bar.dart';
import 'bottom_sheet_widget.dart';

class CountryCodeBottomSheet<T> extends BottomSheetWidget<T> {
  final String selectedCountryCode;

  const CountryCodeBottomSheet({
    Key? key,
    required this.selectedCountryCode,
  }) : super(
          key: key,
          useRootNavigator: true,
          isScrollControlled: true,
          enableDrag: false,
          backgroundColor: Colors.transparent,
          barrierColor: Colors.transparent,
        );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: SizeConfig.statusBarHeight),
      child: Scaffold(
        appBar: MyAppBar(
          title: AppLocalization.getLabels.selectCountryCodeAppBarText,
        ),
        body: Scrollbar(
          child: ListView.separated(
            itemCount: countryCodes.length,
            itemBuilder: (BuildContext context, int index) {
              final value = countryCodes.values.elementAt(index);
              final key = countryCodes.keys.elementAt(index);
              return InkWell(
                onTap: () => _onTap(context, {key: value}),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: paddingM,
                    vertical: paddingM.verticalScale,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Flexible(
                              child: Text(
                                AppLocalization.getLabels.country[key]!,
                                maxLines: 1,
                                style: s14w500Dark,
                              ),
                            ),
                            const SizedBox(width: paddingXXXXS),
                            Image.asset(
                              getFlagPath(key),
                              height: 16.verticalScale,
                            ),
                            const SizedBox(width: paddingXXXXS),
                            Text(
                              '($value)',
                              style: s14w500Dark,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: paddingXXXXS),
                      Icon(
                        Icons.done,
                        color: Theme.of(context).colorScheme.secondary,
                        size: 22.horizontalScale,
                      ).isVisible(key == selectedCountryCode)
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(
                thickness: 1,
                color: Colors.black12,
              );
            },
          ),
        ),
      ),
    );
  }

  void _onTap(BuildContext context, Map<String, String> code) {
    Navigator.pop(context, code);
  }
}
