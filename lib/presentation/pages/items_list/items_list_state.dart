import 'package:test_items_list/domain/entities/item_entity.dart';

class ItemsListState {
  final List<ItemEntity> items;
  final bool isLoading;
  final bool isLoadingPagination;
  final bool hasReachedMax;
  final String? errorMessage;

  const ItemsListState({
    required this.items,
    required this.isLoading,
    required this.isLoadingPagination,
    required this.hasReachedMax,
    required this.errorMessage,
  });

  factory ItemsListState.initial() => ItemsListState(
        items: [],
        isLoading: false,
        isLoadingPagination: false,
        hasReachedMax: false,
        errorMessage: null,
      );

  ItemsListState copyWith({
    List<ItemEntity>? items,
    bool? isLoading,
    bool? isLoadingPagination,
    bool? hasReachedMax,
    String? errorMessage,
    bool resetErrorMessage = false,
  }) =>
      ItemsListState(
        items: items ?? this.items,
        isLoading: isLoading ?? this.isLoading,
        isLoadingPagination: isLoadingPagination ?? this.isLoadingPagination,
        hasReachedMax: hasReachedMax ?? this.hasReachedMax,
        errorMessage: resetErrorMessage ? null : errorMessage ?? this.errorMessage,
      );
}
