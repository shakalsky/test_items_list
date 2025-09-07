import 'package:test_items_list/presentation/pages/settings/settings_page.dart';

abstract interface class ISettingsUseCases {
  Future<void> setThemeMode(AppThemeMode themeMode);
  Future<AppThemeMode> getThemeMode();
}
