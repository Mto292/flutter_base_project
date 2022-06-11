import 'package:get/get.dart';

import '../controllers/general/session_service.dart';
import '../model/header/session_header_model.dart';

/// Tüm moldüllerde ile kullanılan Http işlemleri burada yapılmakta
///
class General extends SessionHeaderModel {
  General() : super(token: Get.find<SessionService>().getUserToken() ?? '');
}
