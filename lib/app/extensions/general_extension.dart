import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants/enum/loading_status_enum.dart';
import '../navigation/route/route_factory.dart';

/// [LoadingStatus] Enumun durumlarını kontrol etmek için yazıldı
extension LoadingStatusExtension on LoadingStatus {
  get isLoading => this == LoadingStatus.Loading;

  get isInit => this == LoadingStatus.Init;

  get isError => this == LoadingStatus.Error;

  get isLoaded => this == LoadingStatus.Loaded;
}

/// [BaseModelStatus] Enumun durumlarını kontrol etmek için yazıldı
extension BaseModelStatusExtension on BaseModelStatus {
  get isOk => this == BaseModelStatus.Ok;

  get isAction => this == BaseModelStatus.Action;

  get isError => this == BaseModelStatus.Error;

  get isUnprocessableEntity => this == BaseModelStatus.UnprocessableEntity;

  get isTimeOut => this == BaseModelStatus.TimeOut;

  get isNotFound => this == BaseModelStatus.NotFound;

  get isFound => this == BaseModelStatus.Found;
}

extension OpenLinkExtension on String {
  void launchLink() async {
    try {
      final url = Uri.parse(this);
      await launchUrl(url);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}

extension PriceFormat on double {
  String getPrice({
    bool withOutDigitNumber = false,
    String? symbol,
  }) {
    final int decimalDigits;
    final String customPattern;
    if (withOutDigitNumber) {
      decimalDigits = 0;
      customPattern = '#,##0.00\u00A4';
    } else {
      decimalDigits = 2;
      customPattern = '#,##0.00 \u00A4';
    }
    var percent = NumberFormat.currency(
      locale: Localizations.localeOf(MyRouteFactory.context).languageCode,
      symbol: symbol ?? 'TL',
      decimalDigits: decimalDigits,
      customPattern: customPattern,
    );
    return percent.format(this);
  }
}

extension GetXExtension on GetInterface {
  S? canFind<S>({String? tag}) {
    try {
      return GetInstance().find<S>(tag: tag);
    } on String {
      return null;
    }
  }
}
