import 'package:test_items_list/data/i_datasources/i_item_datasource.dart';
import 'package:dio/dio.dart';
import 'package:test_items_list/data/models/item/item_model.dart';

const _itemsUrl = 'https://rickandmortyapi.com/api/character';

class ItemRemoteDataSource implements IItemRemoteDatasource {
  final Dio _dio;

  ItemRemoteDataSource(this._dio);

  @override
  Future<List<ItemModel>> getItems({int? page}) async {
    final response = await _dio.get(_itemsUrl, queryParameters: {
      if (page != null) 'page': page,
    });

    return (response.data as Map<String, dynamic>)['results']
        .map((e) {
          try {
            return ItemModel.fromJson(e);
          } catch (e) {
            return null;
          }
        })
        .whereType<ItemModel>()
        .toList();
  }

  @override
  Future<List<ItemModel>> getItemsWithPagination({required int page}) async {
    final response = await _dio.get(_itemsUrl, queryParameters: {
      'page': page,
    });

    return (response.data as Map<String, dynamic>)['results']
        .map((e) {
          try {
            return ItemModel.fromJson(e);
          } catch (e) {
            return null;
          }
        })
        .whereType<ItemModel>()
        .toList();
  }
}
