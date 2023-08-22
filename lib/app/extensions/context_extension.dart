import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart' show BuildContext, FocusScope;

extension CheckInternetExtension on BuildContext {
  ///it written for check the internet
  Future<bool> checkInternet() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      return false;
    } else {
      return true;
    }
  }

  void unFocus() => FocusScope.of(this).unfocus();
}
