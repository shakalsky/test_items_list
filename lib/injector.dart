import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:test_items_list/data/datasourcies/item_remote_data_source.dart';
import 'package:test_items_list/data/repositories/item_repository.dart';
import 'package:test_items_list/domain/usecases/item_use_cases.dart';

GetIt getIt = GetIt.instance;

Future<void> setupInjector() async {
  getIt.registerSingleton<ItemRemoteDataSource>(ItemRemoteDataSource(Dio()));
  getIt.registerSingleton<ItemRepository>(ItemRepository(getIt.get<ItemRemoteDataSource>()));
  getIt.registerSingleton<ItemUseCases>(ItemUseCases(getIt.get<ItemRepository>()));
}
