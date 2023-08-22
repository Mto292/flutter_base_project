import 'package:flutter/material.dart';
import 'package:flutter_base_project/app/components/other_widgets/bottom_sheet_hold_drag_widget.dart';
import 'package:flutter_base_project/app/components/other_widgets/web_view.dart';
import 'package:flutter_base_project/app/constants/other/padding_and_radius_size.dart';
import 'package:flutter_base_project/app/libs/app/size_config.dart';
import '../../theme/color/app_colors.dart';
import 'bottom_sheet_widget.dart';

class WebViewBottomSheet<T> extends BottomSheetWidget<T> {
  final String? contentBase64;
  final String? contentHtml;
  final String? url;
  final Function(String?)? listenToUrl;

  const WebViewBottomSheet({
    Key? key,
    this.contentBase64,
    this.contentHtml,
    this.url,
    this.listenToUrl,
  }) : super(
          key: key,
          isScrollControlled: true,
          enableDrag: true,
          backgroundColor: Colors.transparent,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () => Navigator.pop(context),
          child: SizedBox(
            height: SizeConfig.statusBarHeight,
            width: double.infinity,
          ),
        ),
        Flexible(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: AppColors.blue.shade200,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(radiusXXL)),
            ),
            child: Column(
              children: [
                const SizedBox(height: paddingM),
                const BottomSheetHoldAndDragWidget(),
                const SizedBox(height: paddingM),
                Flexible(
                  child: MyWebView(
                    contentBase64: contentBase64,
                    url: url,
                    contentHtml: contentHtml,
                    showAppBar: false,
                    progressBackgroundColor: AppColors.blue.shade200,
                    listenToUrl: listenToUrl,
                  ),
                ),
                SizedBox(height: SizeConfig.safeAreaPadding.bottom)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
