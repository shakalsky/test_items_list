import 'package:test_items_list/data/models/item/item_model.dart';

abstract interface class IItemsDatasource {
  Future<List<ItemModel>> getItems();
}

abstract interface class IItemLocalDatasource {
  Future<List<ItemModel>> getItems();
  Future<void> saveItems(List<ItemModel> items);
}

abstract interface class IItemRemoteDatasource {
  Future<List<ItemModel>> getItems({int? page});
  Future<List<ItemModel>> getItemsWithPagination({required int page});
}
