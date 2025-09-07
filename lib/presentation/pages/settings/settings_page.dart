import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_items_list/presentation/pages/settings/settings.bloc.dart';
import 'package:test_items_list/presentation/pages/settings/settings_state.dart';

enum AppThemeMode {
  light,
  dark,
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) => Center(
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
                      title: Text(
                          state.themeMode == AppThemeMode.dark ? 'Темная тема' : 'Светлая тема'),
                      subtitle: Text(state.themeMode == AppThemeMode.dark
                          ? 'Включена темная тема'
                          : 'Включена светлая тема'),
                      value: state.themeMode == AppThemeMode.dark,
                      onChanged: (bool value) {
                        context
                            .read<SettingsBloc>()
                            .add(ChangeThemeMode(value ? AppThemeMode.dark : AppThemeMode.light));
                      },
                      secondary: Icon(state.themeMode == AppThemeMode.dark
                          ? Icons.dark_mode
                          : Icons.light_mode),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
