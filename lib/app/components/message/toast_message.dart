import 'package:dop_flutter_base_project/app/extensions/widgets_scale_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants/app/padding_and_radius_size.dart';
import '../../constants/asset/assets.dart';
import '../../theme/colors.dart';
import '../../theme/text_style.dart';

/// [widget] Toast mesaj da gösterilen custom widget eğer null ise default widget gösterilecektir
/// [duration] Toast mesajı SN cinsinden gösterme süresi eğer null ise 3 Sn olarak devam edecek
/// [textMessage] eğer [widget] null olupta bu Text metini default Toast message'nde gösterilecektir
ToastFuture showToastMessage(BuildContext context, {Widget? widget, int? duration, String? textMessage}) {
  if (widget == null && textMessage == null) {
    throw "Toast Message de widget ve textMassage parametreleri ikisi birden null olamaz.\n"
        "if(widget == null && textMessage == null) Doğru değil.";
  } else {
    return showToastWidget(
      widget ??
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
            margin: const EdgeInsets.symmetric(horizontal: 50.0),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radiusXS),
              ),
              color: Colors.black45,
            ),
            child: Text(
              textMessage!,
              style: s16W400Dark().copyWith(color: Colors.white),
            ),
          ),
      context: context,
      isIgnoring: false,
      animation: StyledToastAnimation.slideFromTopFade,
      reverseAnimation: StyledToastAnimation.slideToTopFade,
      position: const StyledToastPosition(align: Alignment.topCenter, offset: 0.0),
      startOffset: const Offset(0.0, -3.0),
      reverseEndOffset: const Offset(0.0, -3.0),
      duration: Duration(seconds: duration ?? 3),
      animDuration: const Duration(seconds: 1),
      curve: Curves.fastLinearToSlowEaseIn,
      reverseCurve: Curves.fastOutSlowIn,
    );
  }
}

ToastFuture showDoneToastMessage(BuildContext context, {int? duration, required String textMessage}) {
  return showToastMessage(
    context,
    duration: duration,
    widget: Padding(
      padding: const EdgeInsets.all(paddingM),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radiusXS),
            color: AppColor.lightGreenColor,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                offset: Offset.zero,
                blurRadius: 3,
                spreadRadius: 2,
              )
            ]),
        child: Padding(
          padding: EdgeInsets.all(paddingM.horizontalScale),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                doneIcon,
                width: 16.horizontalScale,
              ),
              const SizedBox(width: paddingM),
              Flexible(
                  child: Text(
                textMessage,
                style: s16W400Dark(),
              ))
            ],
          ),
        ),
      ),
    ),
  );
}
