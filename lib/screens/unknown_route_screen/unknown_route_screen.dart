import 'package:flutter/material.dart';
import '../../app/constants/assets/assets.gen.dart';
import '../../app/constants/other/padding_and_radius_size.dart';
import '../../../app/theme/text_style/text_style.dart';
import '../../app/components/app_bar/app_bar.dart';
import '../../core/i10n/i10n.dart';

/// Gidilmek istenilen ekran tanımlı değil ise Gösterilen ekran
class UnknownRouteScreen extends StatelessWidget {
  const UnknownRouteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.icons.outlineErrorIcon.svg(),
            const SizedBox(height: paddingM),
            Text(
              AppLocalization.getLabels.unknownPageRouteMessageText,
              style: s16w400Dark,
            ),
          ],
        ),
      ),
    );
  }
}
