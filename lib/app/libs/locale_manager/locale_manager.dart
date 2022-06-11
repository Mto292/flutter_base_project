import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/enum/cache_key_enum.dart';

class LocaleManager {
  late final SharedPreferences _preferences;

  static final LocaleManager _instance = LocaleManager._init();

  static LocaleManager get instance => _instance;

  LocaleManager._init();

  static Future cacheInit([SharedPreferences? initValue]) async {
    instance._preferences = initValue ?? await SharedPreferences.getInstance();
  }

  Future<void> clearAll() async {
    await _preferences.clear();
  }

  Future<void> removeAt(CacheKey key) async {
    await _preferences.remove(describeEnum(key));
  }

  Future<void> setStringValue(CacheKey key, String value) async {
    await _preferences.setString(describeEnum(key), value);
  }

  Future<void> setStringListValue(CacheKey key, List<String> value) async {
    await _preferences.setStringList(describeEnum(key), value);
  }

  Future<void> setBoolValue(CacheKey key, bool value) async {
    await _preferences.setBool(describeEnum(key), value);
  }

  Future<void> setIntValue(CacheKey key, int value) async {
    await _preferences.setInt(describeEnum(key), value);
  }

  String? getStringValue(CacheKey key) => _preferences.getString(describeEnum(key));

  bool? getBoolValue(CacheKey key) => _preferences.getBool(describeEnum(key));

  int? getIntValue(CacheKey key) => _preferences.getInt(describeEnum(key));
}
