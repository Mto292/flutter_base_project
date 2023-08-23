import 'dart:async';
import 'dart:io';
import 'package:dop_logger/dop_logger.dart';
import 'package:http/http.dart' as http;
import '../../app/constants/app/http_url.dart';
import '../../app/constants/enum/general_enum.dart';
import 'ihttp_client.dart';
import '../exception/app_exception.dart';

/// written this class for http client
class HttpClient extends IHttpClient {
  HttpClient._() : super(HttpUrl.baseUrl);

  static final HttpClient _instance = HttpClient._();

  factory HttpClient() => _instance;

  /// http get method
  Future<http.Response?> request(
    HttpMethod httpMethod,
    String method, {
    required Map<String, String>? headerParam,
    Map<String, dynamic> bodyParam = const {},
    String? baseUrl,
  }) async {
    http.Response? response = await _request(
      httpMethod,
      method,
      headerParam,
      bodyParam,
      baseUrl: baseUrl,
    ).catchError(
      (error, stackTrace) => _httpErrorHandler(
        '${baseUrl ?? HttpUrl.baseUrl}/$method',
        error,
        stackTrace,
        headerParam,
        bodyParam,
      ),
    );
    HttpLogger.instance.log(
      url: '${baseUrl ?? HttpUrl.baseUrl}/$method',
      statusCode: response!.statusCode,
      header: headerParam,
      requestBody: bodyParam,
      responseBody: response.body,
    );
    if (response.statusCode >= HttpStatus.clientClosedRequest &&
        response.statusCode < HttpStatus.networkConnectTimeoutError) {
      throw ServerError();
    }
    return response;
  }

  Future<http.Response?> _request(
    HttpMethod httpMethod,
    String method,
    Map<String, String>? headerParam,
    Map<String, dynamic> bodyParam, {
    String? baseUrl,
  }) async {
    final http.Response? response;
    switch (httpMethod) {
      case HttpMethod.get:
        response = await get(
          method,
          headerParam: headerParam,
          bodyParam: bodyParam,
          baseUrl: baseUrl,
        );
        break;
      case HttpMethod.post:
        response = await post(
          method,
          headerParam: headerParam,
          bodyParam: bodyParam,
          baseUrl: baseUrl,
        );
        break;
      case HttpMethod.put:
        response = await put(
          method,
          headerParam: headerParam,
          bodyParam: bodyParam,
          baseUrl: baseUrl,
        );
        break;
      case HttpMethod.delete:
        response = await delete(
          method,
          headerParam: headerParam,
          bodyParam: bodyParam,
          baseUrl: baseUrl,
        );
        break;
      case HttpMethod.update:
        response = await update(
          method,
          headerParam: headerParam,
          bodyParam: bodyParam,
          baseUrl: baseUrl,
        );
        break;
    }
    return response;
  }

  _httpErrorHandler(
    String url,
    error,
    stackTrace,
    Map<String, String>? header,
    Map<String, dynamic> requestBody,
  ) {
    HttpLogger.instance.log(
      url: url,
      statusCode: 000,
      header: header,
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
}
