import '../i10n/i10n.dart';

/// Written for Http Exception error
class HttpError implements Exception {
  String? message;

  HttpError([this.message]);

  @override
  String toString() {
    message ??= AppLocalization.getLabels.defaultErrorMessage;
    return message!;
  }
}

class ServerError extends HttpError {
  ServerError() : super(AppLocalization.getLabels.serverErrorMessage);
}

class InternetError extends HttpError {
  InternetError() : super(AppLocalization.getLabels.noInternetErrorMessage);
}
