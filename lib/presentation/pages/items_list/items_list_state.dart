import 'package:test_items_list/domain/entities/item_entity.dart';

class ItemsListState {
  final List<ItemEntity> items;
  final bool isLoading;
  final String? errorMessage;

  const ItemsListState({
    required this.items,
    required this.isLoading,
    required this.errorMessage,
  });

  factory ItemsListState.initial() => ItemsListState(
        items: [],
        isLoading: false,
        errorMessage: null,
      );

  ItemsListState copyWith({
    List<ItemEntity>? items,
    bool? isLoading,
    String? errorMessage,
    bool resetErrorMessage = false,
  }) =>
      ItemsListState(
        items: items ?? this.items,
        isLoading: isLoading ?? this.isLoading,
        errorMessage: resetErrorMessage ? null : errorMessage ?? this.errorMessage,
      );
}
