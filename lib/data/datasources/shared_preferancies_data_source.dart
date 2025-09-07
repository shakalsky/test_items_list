import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_items_list/data/i_datasources/i_shared_preferences_sata_source.dart';

class SharedPreferencesDataSource implements ISharedPreferencesDataSource {
  final SharedPreferences _sharedPreferences;

  SharedPreferencesDataSource(this._sharedPreferences);

  @override
  Future<void> setBool(String key, bool value) async {
    await _sharedPreferences.setBool(key, value);
  }

  @override
  Future<bool?> getBool(String key) async {
    return _sharedPreferences.getBool(key);
  }
}
