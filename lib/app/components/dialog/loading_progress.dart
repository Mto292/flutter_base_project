import 'package:flutter/material.dart' show CircularProgressIndicator, ProgressIndicatorTheme;
import 'package:overlay_kit/overlay_kit.dart';
import 'package:flutter_base_project/app/navigation/route/route_factory.dart';

class LoadingProgress {
  LoadingProgress.start() {
    OverlayLoadingProgress.start(
      widget: CircularProgressIndicator(
        strokeWidth: 3,
        color: ProgressIndicatorTheme.of(MyRouteFactory.context).color,
      ),
    );
  }

  LoadingProgress.stop() {
    OverlayLoadingProgress.stop();
  }
}
