import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_items_list/domain/i_use_cases/i_settings_use_cases.dart.dart';
import 'package:test_items_list/presentation/pages/settings/settings_page.dart';
import 'package:test_items_list/presentation/pages/settings/settings_state.dart';
import 'package:toastification/toastification.dart';

sealed class SettingsEvent {}

final class ChangeThemeMode extends SettingsEvent {
  final AppThemeMode themeMode;

  ChangeThemeMode(this.themeMode);
}

final class Init extends SettingsEvent {}

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final ISettingsUseCases _settingsUseCases;

  SettingsBloc(this._settingsUseCases) : super(SettingsState(themeMode: null)) {
    on<ChangeThemeMode>((event, emit) async {
      try {
        await _settingsUseCases.setThemeMode(event.themeMode);
        emit(state.copyWith(themeMode: event.themeMode));
      } catch (e) {
        toastification.show(
          title: Text(e.toString()),
          autoCloseDuration: const Duration(seconds: 5),
        );
      }
    });
    on<Init>((event, emit) async {
      final themeMode = await _settingsUseCases.getThemeMode();
      emit(state.copyWith(themeMode: themeMode));
    });
  }
}
