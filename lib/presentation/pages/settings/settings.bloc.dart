import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_items_list/presentation/pages/settings/settings_page.dart';
import 'package:test_items_list/presentation/pages/settings/settings_state.dart';

sealed class SettingsEvent {}

final class ChangeThemeMode extends SettingsEvent {
  final AppThemeMode themeMode;

  ChangeThemeMode(this.themeMode);
}

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(SettingsState.initial()) {
    on<ChangeThemeMode>((event, emit) => emit(state.copyWith(themeMode: event.themeMode)));
  }
}
