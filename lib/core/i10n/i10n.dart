import 'package:flutter/cupertino.dart';
import 'package:flutter_base_project/app/navigation/route/route_factory.dart';
import 'default_localization.dart';

class AppLocalization<T extends AppLocalizationLabel> {
  final Locale locale;
  final T labels;

  const AppLocalization._(this.locale, this.labels);

  static AppLocalizationLabel get getLabels {
    AppLocalization? localization = Localizations.of(MyRouteFactory.context, AppLocalization);
    localization ??= AppLocalization._(kDefaultLocal, supportedLocalization[kDefaultLocal.languageCode]!);
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
    final localization = AppLocalization._(locale, supportedLocalization[locale.languageCode]!);
    return localization;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalization> old) {
    return false;
  }
}
