import 'package:test_items_list/presentation/pages/settings/settings_page.dart';

abstract interface class ISettingsRepository {
  Future<void> setThemeMode(AppThemeMode themeMode);
  Future<AppThemeMode> getThemeMode();
}
