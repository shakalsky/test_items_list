import 'package:test_items_list/domain/entities/item_entity.dart';

abstract interface class IItemRepository {
  Future<List<ItemEntity>> getItems();
}
