import 'package:test_items_list/data/i_datasources/i_item_datasource.dart';
import 'package:dio/dio.dart';
import 'package:test_items_list/data/models/item/item_model.dart';

class ItemRemoteDataSource implements IItemsDatasource {
  final Dio _dio;

  ItemRemoteDataSource(this._dio);

  @override
  Future<List<ItemModel>> getItems() async {
    final response = await _dio.get('https://rickandmortyapi.com/api/character');

    return (response.data as Map<String, dynamic>)['results']
        .map((e) => ItemModel.fromJson(e))
        .whereType<ItemModel>()
        .toList();
  }
}
