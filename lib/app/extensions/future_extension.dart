import 'package:overlay_kit/overlay_kit.dart';

import '../model/response/base_http_model.dart';

extension EndpointFutureExtenstion<T> on Future<BaseHttpModel<T>> {
  Future<BaseHttpModel<T>> callEndpoint() async {
    return await callWithProgress();
  }
}
