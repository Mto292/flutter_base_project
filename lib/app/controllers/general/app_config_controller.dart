import 'package:flutter/material.dart';
import '../../../core/i10n/default_localization.dart';
import '../../constants/enum/cache_key_enum.dart';
import '../../libs/app/sip_state.dart';
import '../../libs/locale_manager/locale_manager.dart';

class AppConfigController extends SipNotifier {
  Locale _locale = getDefaultKeyFromCache;

  AppConfigController();

  Locale get locale => _locale;

  set locale(Locale value) {
    _locale = value;
    super.notifyListeners();
  }

  Future<void> changeLanguage(Locale _locale) async {
    if (locale == _locale) return;
    locale = _locale;
    await Future.wait([
      LocaleManager.instance.setStringValue(
        CacheKey.languageCode,
        locale.languageCode,
      ),
      Future.delayed(const Duration(milliseconds: 200)),
    ]);
  }
}
