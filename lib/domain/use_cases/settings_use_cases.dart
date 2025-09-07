import 'package:test_items_list/domain/i_repositories/i_settings_repository.dart.dart';
import 'package:test_items_list/domain/i_use_cases/i_settings_use_cases.dart.dart';
import 'package:test_items_list/presentation/pages/settings/settings_page.dart';

class SettingsUseCases implements ISettingsUseCases {
  final ISettingsRepository _settingsRepository;

  SettingsUseCases(this._settingsRepository);

  @override
  Future<void> setThemeMode(AppThemeMode themeMode) async {
    await _settingsRepository.setThemeMode(themeMode);
  }

  @override
  Future<AppThemeMode> getThemeMode() async {
    return await _settingsRepository.getThemeMode();
  }
}
