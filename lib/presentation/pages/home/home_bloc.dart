import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_items_list/presentation/pages/home/home_state.dart';

sealed class HomeEvent {}

final class ChangeTab extends HomeEvent {
  final int tab;

  ChangeTab(this.tab);
}

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<ChangeTab>((event, emit) => emit(state.copyWith(selectedTab: event.tab)));
  }
}
