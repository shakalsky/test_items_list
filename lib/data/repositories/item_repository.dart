import 'package:test_items_list/data/i_datasources/i_item_datasource.dart';
import 'package:test_items_list/domain/entities/item_entity.dart';
import 'package:test_items_list/domain/i_repositories/i_item_repository.dart';

class ItemRepository implements IItemsRepository {
  final IItemsDatasource _itemsDatasource;

  ItemRepository(this._itemsDatasource);

  @override
  Future<List<ItemEntity>> getItems() async {
    return (await _itemsDatasource.getItems())
        .map(
          (e) => e.toEntity(),
        )
        .whereType<ItemEntity>()
        .toList(growable: false);
  }
}
