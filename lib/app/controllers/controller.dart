import 'dart:collection';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/core/exception/app_exception.dart';

part 'digital_energy/module_controller.dart';

/// Modül controller ini kontrol etmek için yazıldı
/// nodül controller ini [Controller] den kullanılması gerek
/// Modül controller ile ilgili işlem hariç hiç bişey YAZILMAZ
///
class Controller extends GetxController {
  final LinkedHashMap<Key, GetxController> _controllers = LinkedHashMap();

  T get<T extends GetxController>() {
    return _controllers.values.lastWhere(
      (element) => element is T,
      orElse: () => throw AppException('$T Not Fount in General Controller'),
    ) as T;
  }

  T put<T extends GetxController>(T dependency, Key tag) {
    if(_controllers.containsKey(tag)) return _controllers[tag] as T;
    final c = Get.put(
      dependency,
      tag: tag.toString(),
    );
    _controllers[tag] = c;
    return c;
  }

  void delete<T extends GetxController>(Key tag) {
    Get.delete<T>(tag: tag.toString());
    _controllers.remove(tag);
  }

  T? canFind<T extends GetxController>() {
    try {
      return get<T>();
    } catch (e) {
      return null;
    }
  }

  Key getTag<T extends GetxController>() {
    return _controllers.entries.lastWhere(
      (element) => element.value is T,
      orElse: () => throw AppException('GetX Tag Not Fount'),
    ).key;
  }
}
