import 'package:get_storage/get_storage.dart';

class ELocaleStorage {
  static final ELocaleStorage _instance = ELocaleStorage._internal();

  factory ELocaleStorage() {
    return _instance;
  }

  ELocaleStorage._internal();

  final _storage = GetStorage();

  // Generic method to save data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // Generic method to read data
  Future<T?> readData<T>(String key) async {
    return _storage.read<T>(key);
  }

  // Generic method to remove data
  Future<void> removeData<T>(String key) async {
    await _storage.remove(key);
  }

  // Clear all data in storage
  Future<void> clearAll() async {
    await _storage.erase();
  }
}
