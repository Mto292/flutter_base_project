import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/widgets.dart';

extension ContextExtension on BuildContext {
  ///it written for check the internet
  Future<bool> checkInternet() async {
    try {
      final connectivityResult = await Connectivity().checkConnectivity();
      if (connectivityResult.first == ConnectivityResult.none) {
        return false;
      } else {
        return true;
      }
    } catch (_) {
      return true;
    }
  }

  void unFocus([FocusNode? focusNode]) =>
      (focusNode ?? FocusManager.instance.primaryFocus ?? FocusScope.of(this)).unfocus();
}
