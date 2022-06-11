import 'package:get/get.dart';

import '../../controllers/general/session_service.dart';
import '../../model/header/session_header_model.dart';

class Payment extends SessionHeaderModel {
  Payment() : super(token: Get.find<SessionService>().getUserToken()!);
}
