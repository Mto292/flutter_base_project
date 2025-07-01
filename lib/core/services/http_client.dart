import 'dart:async';
import 'package:http/http.dart' as http;
import '../../app/constants/app/http_url.dart';
import '../../app/constants/enum/general_enum.dart';
import 'ihttp_client.dart';
import 'interceptors.dart';

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
      (error) => Interceptors().onError(
        url: '${baseUrl ?? HttpUrl.baseUrl}/$method',
        header: headerParam,
        requestBody: bodyParam,
        error: error.toString(),
      ),
    );
    Interceptors().onResponse(
      requestBody: bodyParam,
      response: response!,
    );

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
}
