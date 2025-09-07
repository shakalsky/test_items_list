import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_items_list/domain/i_use_cases/i_item_use_cases.dart';
import 'package:test_items_list/presentation/pages/items_list/items_list_state.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:toastification/toastification.dart';

sealed class ItemsListEvent {}

final class GetItems extends ItemsListEvent {}

final class RefreshPage extends ItemsListEvent {}

final class GetMoreItems extends ItemsListEvent {}

class ItemsListBloc extends Bloc<ItemsListEvent, ItemsListState> {
  final IItemUseCases _itemUseCases;

  int _paginationPage = 0;

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
        emit(state.copyWith(items: items));
      } catch (error) {
        emit(state.copyWith(errorMessage: error.toString()));
      } finally {
        emit(state.copyWith(isLoading: false));
      }
    });

    on<RefreshPage>((event, emit) {
      _paginationPage = 0;
      emit(state.copyWith(
        resetErrorMessage: true,
        hasReachedMax: false,
      ));
      add(GetItems());
    });

    on<GetMoreItems>((event, emit) async {
      if (state.isLoadingPagination || state.hasReachedMax) return;

      _paginationPage++;

      try {
        emit(state.copyWith(isLoadingPagination: true));

        if (!(await InternetConnection().hasInternetAccess)) {
          toastification.show(
            title: Text('Please check your internet connection and try again'),
            autoCloseDuration: const Duration(seconds: 5),
            type: ToastificationType.error,
          );
        }

        final newItems = await _itemUseCases.getItemsWithPagination(page: _paginationPage);
        if (newItems.isEmpty) {
          emit(state.copyWith(hasReachedMax: true));
        } else {
          emit(state.copyWith(items: [...state.items, ...newItems]));
        }
      } catch (error) {
        toastification.show(
          title: Text(error.toString()),
          autoCloseDuration: const Duration(seconds: 5),
          type: ToastificationType.error,
        );
      } finally {
        emit(state.copyWith(isLoadingPagination: false));
      }
    });
  }
}
