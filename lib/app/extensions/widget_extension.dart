import 'package:flutter/material.dart';

/// Beli widgetin ggörünürlük durumunu değiştirmek için kullanılır
extension WidgetExtension on Widget {
  Widget isVisible(bool value, {double? height, double? width}) => value
      ? this
      : SizedBox(
          height: height,
          width: width,
        );
}
