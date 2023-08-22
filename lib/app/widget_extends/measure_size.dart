import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/// Sarmaladığımız widgetlerın boyutunu vermek için yazıldı.
/// Sarılı olan widgettin boyutu değiştiğinde [OnSizeChange] tipinde [onCountChange] foknsiyonu çalışır.
///
///             MeasureSize(
///                 onChange: (Size size) {
///                      controller.onChangeSizeItemMenuVerticalList(size, categoryIndex);
///                      },
///                 child: Column()
///
/// Şeklinde kullanılmakta
typedef OnSizeChange = void Function(Size size);

class MeasureSize extends SingleChildRenderObjectWidget {
  final OnSizeChange? onChange;

  const MeasureSize({
    Key? key,
    required this.onChange,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return MyRenderObject(onChange);
  }
}

class MyRenderObject extends RenderProxyBox {
  Size? oldSize;
  final OnSizeChange? onChange;

  MyRenderObject(this.onChange);

  @override
  void performLayout() {
    super.performLayout();

    Size newSize = child!.size;
    if (oldSize == newSize) return;

    oldSize = newSize;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (onChange != null) onChange!(newSize);
    });
  }
}
