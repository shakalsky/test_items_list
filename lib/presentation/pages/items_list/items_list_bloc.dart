import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_items_list/domain/use_cases/item_use_cases.dart';
import 'package:test_items_list/presentation/pages/items_list/items_list_state.dart';

sealed class ItemsListEvent {}

final class GetItems extends ItemsListEvent {}

class ItemsListBloc extends Bloc<ItemsListEvent, ItemsListState> {
  final ItemUseCases _itemUseCases;
  ItemsListBloc(this._itemUseCases) : super(ItemsListState.initial()) {
    on<GetItems>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final items = await _itemUseCases.getItems();
      emit(state.copyWith(items: items, isLoading: false));
    });
  }
}
