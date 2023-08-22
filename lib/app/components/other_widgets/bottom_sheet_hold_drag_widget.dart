import 'package:flutter/material.dart';
import 'package:flutter_base_project/app/extensions/widgets_scale_extension.dart';
import '../../constants/other/padding_and_radius_size.dart';

/// Bottom Sheetin üst kısmında gösterilen sürekle bırak çizgisi
class BottomSheetHoldAndDragWidget extends StatelessWidget {
  const BottomSheetHoldAndDragWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 50.horizontalScale,
        height: 4.verticalScale,
        decoration: BoxDecoration(
          color: Colors.grey.shade400,
          borderRadius: const BorderRadius.all(
            Radius.circular(radiusXXXXS),
          ),
        ),
      ),
    );
  }
}
