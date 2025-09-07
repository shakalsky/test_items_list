import 'package:test_items_list/data/models/item/item_model.dart';

abstract interface class IItemsDatasource {
  Future<List<ItemModel>> getItems();
}
