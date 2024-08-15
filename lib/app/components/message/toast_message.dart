import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:overlay_kit/overlay_kit.dart';
import 'package:flutter_base_project/app/extensions/widgets_scale_extension.dart';
import '../../constants/assets/assets.gen.dart';
import '../../constants/other/padding_and_radius_size.dart';
import '../../navigation/route/route_factory.dart';
import '../../theme/color/app_colors.dart';
import '../../theme/text_style/text_style.dart';

/// [widget] Toast mesaj da gösterilen custom widget eğer null ise default widget gösterilecektir
/// [duration] Toast mesajı SN cinsinden gösterme süresi eğer null ise 3 Sn olarak devam edecek
void _showToastMessage({
  required Widget widget,
  int? duration,
}) {
  OverlayToastMessage.show(
    widget: widget,
    dismissAll: true,
    duration: Duration(seconds: duration ?? 2),
  );
}

void showDoneToastMessage(String text, {int? duration}) {
  _showToastMessage(
    duration: duration,
    widget: _ToastWidget(
      textMessage: text,
      backgroundColor: AppColors.green.shade200,
      primaryColor: AppColors.green.shade800,
      svgStr: Assets.icons.circleDoneIcon.path,
    ),
  );
}

void showWarningToastMessage(String text, {int? duration}) {
  _showToastMessage(
    duration: duration,
    widget: _ToastWidget(
      textMessage: text,
      backgroundColor: const Color(0xffFFFCF2),
      primaryColor: const Color(0xffFDB022),
      svgStr: Assets.icons.warningIcon.path,
    ),
  );
}

void showErrorToastMessage(String text, {int? duration}) {
  _showToastMessage(
    duration: duration,
    widget: _ToastWidget(
      textMessage: text,
      backgroundColor: const Color(0xffFFF9F9),
      primaryColor: Theme.of(MyRouteFactory.context).colorScheme.error,
      svgStr: Assets.icons.errorIcon.path,
    ),
  );
}

class _ToastWidget extends StatelessWidget {
  final String textMessage;
  final Color backgroundColor;
  final Color primaryColor;
  final String svgStr;

  const _ToastWidget({
    Key? key,
    required this.textMessage,
    required this.backgroundColor,
    required this.primaryColor,
    required this.svgStr,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(paddingM),
      child: Card(
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: primaryColor,
            width: 1.horizontalScale,
          ),
          borderRadius: BorderRadius.circular(radiusXXS),
        ),
        child: Padding(
          padding: EdgeInsets.all(paddingXXS.horizontalScale),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 40.verticalScale,
                width: 4.horizontalScale,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(radiusXXXXXXS),
                ),
              ),
              const SizedBox(width: paddingXXS),
              SvgPicture.asset(
                svgStr,
                width: 24.horizontalScale,
              ),
              const SizedBox(width: paddingM),
              Flexible(
                child: Text(
                  textMessage,
                  maxLines: 2,
                  style: s16w400Dark,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
