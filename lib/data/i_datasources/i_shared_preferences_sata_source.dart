abstract interface class ISharedPreferencesDataSource {
  Future<void> setBool(String key, bool value);
  Future<bool?> getBool(String key);
}
