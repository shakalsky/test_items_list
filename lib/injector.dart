import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:test_items_list/data/datasources/item_remote_data_source.dart';
import 'package:test_items_list/data/datasources/item_local_data_source.dart';
import 'package:test_items_list/data/repositories/item_repository.dart';
import 'package:test_items_list/data/models/item/adapters/item_origin_adapter.dart';
import 'package:test_items_list/data/models/item/adapters/item_location_adapter.dart';
import 'package:test_items_list/data/models/item/adapters/item_model_adapter.dart';
import 'package:test_items_list/domain/use_cases/item_use_cases.dart';
import 'package:test_items_list/presentation/pages/home/home_bloc.dart';
import 'package:test_items_list/presentation/pages/items_list/items_list_bloc.dart';
import 'package:test_items_list/presentation/pages/settings/settings.bloc.dart';

GetIt getIt = GetIt.instance;

Future<void> setupInjector() async {
  // Инициализируем Hive
  await Hive.initFlutter();

  // Регистрируем Hive адаптеры
  Hive.registerAdapter(ItemOriginAdapter());
  Hive.registerAdapter(ItemLocationAdapter());
  Hive.registerAdapter(ItemModelAdapter());

  getIt.registerSingleton<ItemRemoteDataSource>(ItemRemoteDataSource(Dio()));
  getIt.registerSingleton<ItemLocalDataSource>(ItemLocalDataSource());

  getIt.registerSingleton<ItemRepository>(
    ItemRepository(
      getIt.get<ItemRemoteDataSource>(),
      getIt.get<ItemLocalDataSource>(),
    ),
  );

  getIt.registerSingleton<ItemUseCases>(ItemUseCases(getIt.get<ItemRepository>()));

  getIt.registerFactory<HomeBloc>(() => HomeBloc());
  getIt.registerFactory<SettingsBloc>(() => SettingsBloc());
  getIt.registerFactory<ItemsListBloc>(() => ItemsListBloc(getIt.get<ItemUseCases>()));
}
