import 'package:test_items_list/domain/entities/item_entity.dart';
import 'package:test_items_list/domain/i_repositories/i_item_repository.dart';

class ItemUseCases {
  final IItemsRepository _itemsRepository;

  ItemUseCases(this._itemsRepository);

  Future<List<ItemEntity>> getItems() async {
    return await _itemsRepository.getItems();
  }
}
