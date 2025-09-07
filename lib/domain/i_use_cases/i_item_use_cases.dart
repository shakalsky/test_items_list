import 'package:test_items_list/domain/entities/item_entity.dart';

abstract interface class IItemUseCases {
  Future<List<ItemEntity>> getItems();
}
