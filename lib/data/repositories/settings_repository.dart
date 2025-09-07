import 'package:test_items_list/data/i_datasources/i_shared_preferences_sata_source.dart';
import 'package:test_items_list/domain/i_repositories/i_settings_repository.dart.dart';
import 'package:test_items_list/presentation/pages/settings/settings_page.dart';

const String themeModeKey = 'themeMode';

class SettingsRepository implements ISettingsRepository {
  final ISharedPreferencesDataSource _settingsDatasource;

  SettingsRepository(this._settingsDatasource);

  @override
  Future<void> setThemeMode(AppThemeMode themeMode) async {
    await _settingsDatasource.setBool(themeModeKey, themeMode == AppThemeMode.dark);
  }

  @override
  Future<AppThemeMode> getThemeMode() async {
    return await _settingsDatasource.getBool(themeModeKey) == true
        ? AppThemeMode.dark
        : AppThemeMode.light;
  }
}
