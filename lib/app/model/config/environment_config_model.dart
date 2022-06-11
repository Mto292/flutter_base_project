import '../../constants/enum/general_enum.dart';

/// Environment ler için yazılan model
/// Ortamlara ayırmak istediğimiz tüm ayarları bu nodelle yazıyoruz
///
/// [environment] Ortam 'Environment'
class EnvironmentConfigModel {
  EnvironmentConfigModel({
    this.appName,
    required this.environment,
    required this.apiBaseUrl,
  });

  final String? appName;
  final AppEnvironment environment;
  final String apiBaseUrl;
}
