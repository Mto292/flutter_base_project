import '../app.dart';
import '../constants/app/app_constant.dart';
import '../constants/app/http_url.dart';
import '../constants/enum/general_enum.dart';
import 'bootstrap/bootstrap.dart';

/// Development ortamı
///
/// COMMAND LINE örneği
/// flutter run --flavor development lib/app/main/main_development.dart
/// flutter build appbundle --release --flavor development lib/app/main/main_development.dart
void main() {
  environment = AppEnvironment.Development;
  HttpUrl.baseUrl = 'sandbox.siparisim.dev';

  bootstrap(
    'https://sandbox.siparisim.dev/kafka/loki/app',
    const App(title: 'Sbcli Example App Dev'),
  );
}
