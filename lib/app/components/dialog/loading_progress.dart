import 'package:flutter/material.dart' show Colors;
import 'package:overlay_loading_progress/overlay_loading_progress.dart' as pr;

import '../../navigation/screens.dart';

class LoadingProgress {
  LoadingProgress.showLoading() {
    pr.OverlayLoadingProgress.start(Screens.context, color: Colors.transparent);
  }

  LoadingProgress.done() {
    pr.OverlayLoadingProgress.stop(Screens.context);
  }
}
