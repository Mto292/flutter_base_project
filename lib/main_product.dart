import 'app.dart';
import 'app/constants/enum/general_enum.dart';
import 'app/model/config/environment_config_model.dart';

/// Product ortamı
///
/// COMMAND LINE örneği
/// flutter run --flavor product lib/main_product.dart
/// flutter build apk --release --flavor product lib/main_product.dart
void main() {
  run(
    EnvironmentConfigModel(
      environment: AppEnvironment.Production,
      apiBaseUrl: 'sandbox2.siparisimapi.com',
    ),
  );
}
