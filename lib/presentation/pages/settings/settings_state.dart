import 'package:equatable/equatable.dart';
import 'package:test_items_list/presentation/pages/settings/settings_page.dart';

class SettingsState extends Equatable {
  final AppThemeMode themeMode;

  const SettingsState({required this.themeMode});

  factory SettingsState.initial() => SettingsState(themeMode: AppThemeMode.light);

  SettingsState copyWith({AppThemeMode? themeMode}) =>
      SettingsState(themeMode: themeMode ?? this.themeMode);

  @override
  List<Object?> get props => [themeMode];
}
