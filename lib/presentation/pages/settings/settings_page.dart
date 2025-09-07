import 'package:flutter/material.dart';

enum AppThemeMode {
  light,
  dark,
}

class SettingsPage extends StatelessWidget {
  final AppThemeMode themeMode;
  final Function(AppThemeMode) onChangeThemeMode;

  const SettingsPage({
    super.key,
    required this.themeMode,
    required this.onChangeThemeMode,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Настройки',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          Card(
            margin: const EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const Text(
                    'Тема приложения',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 16),
                  SwitchListTile(
                    title: Text(themeMode == AppThemeMode.dark ? 'Темная тема' : 'Светлая тема'),
                    subtitle: Text(themeMode == AppThemeMode.dark
                        ? 'Включена темная тема'
                        : 'Включена светлая тема'),
                    value: themeMode == AppThemeMode.dark,
                    onChanged: (bool value) {
                      onChangeThemeMode(value ? AppThemeMode.dark : AppThemeMode.light);
                    },
                    secondary:
                        Icon(themeMode == AppThemeMode.dark ? Icons.dark_mode : Icons.light_mode),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
