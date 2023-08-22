import 'package:get/get.dart';

import '../../controllers/general/session_service.dart';
import '../../model/header/session_header_model.dart';

class Module extends SessionHeaderModel {
  Module() : super(token: Get.find<SessionService>().getUserToken()!);
}
