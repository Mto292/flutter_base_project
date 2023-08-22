import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show Locale;
import 'package:flutter_base_project/app/libs/locale_manager/locale_manager.dart';
import 'package:flutter_base_project/core/i10n/lan/tr.dart';
import '../../app/constants/enum/cache_key_enum.dart';
import 'lan/en.dart';

/// Default Locale ayarlarımız
const kDefaultLocal = Locale('tr');

/// Ugulamanın desteklediği diler
const Map<String, AppLocalizationLabel> supportedLocalization = {
  'tr': TrLocalization(),
  'en': EnLocalization(),
};

List<Locale> get getSupportedLocalList => List.generate(
      supportedLocalization.length,
      (index) => Locale(
        supportedLocalization.keys.elementAt(index),
      ),
    );

/// cache te dil ayarları varsa çeker yoksa [kDefaultLocal] değerini alır
Locale get getDefaultKeyFromCache {
  try {
    String? lanCode = LocaleManager.instance.getStringValue(CacheKey.languageCode);
    if (lanCode != null) return Locale(lanCode);

    lanCode = Platform.localeName.split('_')[0];
    if (supportedLocalization.containsKey(lanCode) == true) return Locale(lanCode);

    return Locale(kDefaultLocal.languageCode);
  } catch (e) {
    return Locale(kDefaultLocal.languageCode);
  }
}

abstract class AppLocalizationLabel {
  const AppLocalizationLabel();

  String get localizationTitle;

  String get lanCode;

  String get email;

  String get phone;

  /// Error Text
  String get defaultErrorMessage;

  String get serverErrorMessage;

  String get noInternetErrorMessage;

  String get unauthorizedErrorMessage;

  String get cannotDeleteSelectedAddressMessage;

  String get timeoutErrorMessage;

  /// Button Text
  String get closeBtnText;

  String get cancelBtnText;

  String get saveBtnText;

  String get tryAgainBtnText;

  String get noBtnText;

  String get yesBtnText;

  /// Regex
  String get enterEmailAddressReqExMessage;

  String get enterValidEmailReqExMessage;

  String get enterTelNoReqExMessage;

  String get enterValidTelNoReqExMessage;

  String get enterValidCodeReqExMessage;

  String get enterNameReqExMessage;

  String get enterValidNameReqExMessage;

  String get enterSurnameReqExMessage;

  String get enterValidSurnameReqExMessage;

  String get requiredFieldReqExMessage;

  String get enterValidCardNoReqExMessage;

  String get enterValidDatReqExMessage;

  String get enterValidPasswordReqExMessage;

  /// Text Field
  String get telNoTextFieldText;

  /// Message
  String get unknownPageRouteMessageText;

  String get selectCountryCodeAppBarText;

  /// Code Country
  Map<String, String> get country;
}
