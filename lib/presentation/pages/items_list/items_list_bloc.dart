import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_items_list/domain/i_use_cases/i_item_use_cases.dart';
import 'package:test_items_list/presentation/pages/items_list/items_list_state.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

sealed class ItemsListEvent {}

final class GetItems extends ItemsListEvent {}

final class RefreshPage extends ItemsListEvent {}

class ItemsListBloc extends Bloc<ItemsListEvent, ItemsListState> {
  final IItemUseCases _itemUseCases;

  ItemsListBloc(this._itemUseCases) : super(ItemsListState.initial()) {
    on<GetItems>((event, emit) async {
      try {
        emit(state.copyWith(isLoading: true));
        if (!(await InternetConnection().hasInternetAccess)) {
          if ((await _itemUseCases.getItems()).isEmpty) {
            throw Exception('Please check your internet connection and try again');
          }
        }

        final items = await _itemUseCases.getItems();
        emit(state.copyWith(items: items, isLoading: false));
      } catch (error) {
        emit(state.copyWith(errorMessage: error.toString()));
      } finally {
        emit(state.copyWith(isLoading: false));
      }
    });

    on<RefreshPage>((event, emit) {
      emit(state.copyWith(resetErrorMessage: true));
      add(GetItems());
    });
  }
}
