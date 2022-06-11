import 'package:flutter/cupertino.dart';

import '../../app/navigation/screens.dart';
import 'default_localization.dart';

class AppLocalization<T extends AppLocalizationLabel> {
  final Locale locale;
  final T labels;

  const AppLocalization(this.locale, this.labels);

  static AppLocalizationLabel get getLabels {
    AppLocalization? localization = Localizations.of(Screens.context, AppLocalization);

    localization ??= AppLocalization(kDefaultLocal, supportedLocalization[kDefaultLocal.languageCode]!);
    return localization.labels;
  }

  static _AppLocalizationDelegate delegate = const _AppLocalizationDelegate();
}

class _AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  const _AppLocalizationDelegate();

  @override
  bool isSupported(Locale locale) {
    return supportedLocalization.containsKey(locale.languageCode);
  }

  @override
  Future<AppLocalization> load(Locale locale) async {
    final localization = AppLocalization(locale, supportedLocalization[locale.languageCode]!);
    return localization;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalization> old) {
    return false;
  }
}
