import 'package:test_items_list/data/i_datasources/i_item_datasource.dart';
import 'package:test_items_list/domain/entities/item_entity.dart';
import 'package:test_items_list/domain/i_repositories/i_item_repository.dart';

class ItemRepository implements IItemRepository {
  final IItemRemoteDatasource _remoteDataSource;
  final IItemLocalDatasource _localDataSource;

  ItemRepository(this._remoteDataSource, this._localDataSource);

  @override
  Future<List<ItemEntity>> getItems() async {
    try {
      // Сначала пытаемся получить данные из кэша
      final cachedItems = await _localDataSource.getItems();

      if (cachedItems.isNotEmpty) {
        // Если есть кэшированные данные, возвращаем их
        return cachedItems.map((e) => e.toEntity()).whereType<ItemEntity>().toList(growable: false);
      }

      // Если кэш пустой, загружаем данные с сервера
      final remoteItems = await _remoteDataSource.getItems();

      // Сохраняем данные в кэш
      await _localDataSource.saveItems(remoteItems);

      return remoteItems.map((e) => e.toEntity()).whereType<ItemEntity>().toList(growable: false);
    } catch (error) {
      // В случае ошибки сети, пытаемся получить данные из кэша
      final cachedItems = await _localDataSource.getItems();
      return cachedItems.map((e) => e.toEntity()).whereType<ItemEntity>().toList(growable: false);
    }
  }

  @override
  Future<List<ItemEntity>> getItemsWithPagination({required int page}) async {
    try {
      final remoteItems = await _remoteDataSource.getItemsWithPagination(page: page);
      return remoteItems.map((e) => e.toEntity()).whereType<ItemEntity>().toList(growable: false);
    } catch (error) {
      return [];
    }
  }

  /// Метод для принудительного обновления данных
  Future<List<ItemEntity>> refreshItems() async {
    try {
      final remoteItems = await _remoteDataSource.getItems();

      await _localDataSource.saveItems(remoteItems);

      return remoteItems.map((e) => e.toEntity()).whereType<ItemEntity>().toList(growable: false);
    } catch (e) {
      final cachedItems = await _localDataSource.getItems();
      return cachedItems.map((e) => e.toEntity()).whereType<ItemEntity>().toList(growable: false);
    }
  }
}
