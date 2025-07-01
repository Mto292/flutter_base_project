import 'dart:io';
import 'package:app_logger/app_logger.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../app/controllers/general/session_service.dart';
import '../exception/app_exception.dart';

class Interceptors {
  static final Interceptors _instance = Interceptors._();

  Interceptors._();

  factory Interceptors() => _instance;

  onError({
    required String url,
    required Map<String, String>? header,
    required Map<String, dynamic> requestBody,
    required String error,
  }) {
    HttpLogger.instance.log(
      url: url,
      statusCode: 000,
      header: header ?? {},
      requestBody: requestBody,
      responseBody: 'catchError: $error',
    );
    if (error is SocketException) {
      throw InternetError();
    } else if (error is FormatException) {
      throw AppException();
    } else {
      throw AppException();
    }
  }

  void onResponse({
    required Map<String, dynamic> requestBody,
    required http.Response response,
  }) {
    try {
      final http.Request request = response.request! as http.Request;
      HttpLogger.instance.log(
        url: request.url.toString(),
        statusCode: response.statusCode,
        header: request.headers,
        requestBody: requestBody,
        responseBody: response.body,
      );
    } catch (_) {}

    if (response.statusCode == HttpStatus.unauthorized) {
      final ss = Get.find<SessionService>();
      if (ss.isUserLogin()) ss.logOutAndRestart();
    } else if (response.statusCode >= HttpStatus.clientClosedRequest &&
        response.statusCode < HttpStatus.networkConnectTimeoutError) {
      throw ServerError();
    }
  }
}
