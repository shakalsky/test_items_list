import 'package:test_items_list/domain/entities/item_entity.dart';
import 'package:test_items_list/domain/i_repositories/i_item_repository.dart';
import 'package:test_items_list/domain/i_use_cases/i_item_use_cases.dart';

class ItemUseCases implements IItemUseCases {
  final IItemRepository _itemsRepository;

  ItemUseCases(this._itemsRepository);

  @override
  Future<List<ItemEntity>> getItems() async {
    return await _itemsRepository.getItems();
  }

  @override
  Future<List<ItemEntity>> getItemsWithPagination({required int page}) async {
    return await _itemsRepository.getItemsWithPagination(page: page);
  }
}
