import 'package:test_items_list/data/i_datasources/i_item_datasource.dart';
import 'package:test_items_list/data/models/item/item_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ItemLocalDataSource implements IItemsDatasource {
  late Box<ItemModel> _itemsBox;
  bool _isInitialized = false;

  ItemLocalDataSource() {
    _init();
  }

  Future<void> _init() async {
    if (!_isInitialized) {
      _itemsBox = await Hive.openBox<ItemModel>('items');
      _isInitialized = true;
    }
  }

  @override
  Future<List<ItemModel>> getItems() async {
    await _init();
    return _itemsBox.values.toList();
  }

  Future<void> saveItems(List<ItemModel> items) async {
    await _init();
    await _itemsBox.clear(); // Очищаем старые данные
    for (int i = 0; i < items.length; i++) {
      await _itemsBox.put(i, items[i]); // Сохраняем по индексу
    }
  }

  Future<void> clearCache() async {
    await _init();
    await _itemsBox.clear();
  }

  /// Метод для проверки наличия кэшированных данных
  Future<bool> hasCachedData() async {
    await _init();
    return _itemsBox.isNotEmpty;
  }
}
