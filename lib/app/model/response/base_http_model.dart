import '../../constants/enum/loading_status_enum.dart';

class BaseHttpModel<T> {
  BaseModelStatus status;
  T? data;
  String? message;
  String? errorCode;

  BaseHttpModel({required this.status, this.data, this.message, this.errorCode});
}
