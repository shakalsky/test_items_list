import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_items_list/data/datasources/item_remote_data_source.dart';
import 'package:test_items_list/data/datasources/item_local_data_source.dart';
import 'package:test_items_list/data/datasources/shared_preferancies_data_source.dart';
import 'package:test_items_list/data/i_datasources/i_item_datasource.dart';
import 'package:test_items_list/data/i_datasources/i_shared_preferences_sata_source.dart';
import 'package:test_items_list/data/repositories/item_repository.dart';
import 'package:test_items_list/data/models/item/adapters/item_origin_adapter.dart';
import 'package:test_items_list/data/models/item/adapters/item_location_adapter.dart';
import 'package:test_items_list/data/models/item/adapters/item_model_adapter.dart';
import 'package:test_items_list/data/repositories/settings_repository.dart';
import 'package:test_items_list/domain/i_repositories/i_item_repository.dart';
import 'package:test_items_list/domain/i_repositories/i_settings_repository.dart.dart';
import 'package:test_items_list/domain/i_use_cases/i_item_use_cases.dart';
import 'package:test_items_list/domain/i_use_cases/i_settings_use_cases.dart.dart';
import 'package:test_items_list/domain/use_cases/item_use_cases.dart';
import 'package:test_items_list/domain/use_cases/settings_use_cases.dart';
import 'package:test_items_list/presentation/pages/home/home_bloc.dart';
import 'package:test_items_list/presentation/pages/items_list/items_list_bloc.dart';
import 'package:test_items_list/presentation/pages/settings/settings.bloc.dart';

GetIt getIt = GetIt.instance;

Future<void> setupInjector() async {
  // Инициализируем локальные хранилища
  await Hive.initFlutter();
  final sharedPreferences = await SharedPreferences.getInstance();

  // Регистрируем Hive адаптеры
  Hive.registerAdapter(ItemOriginAdapter());
  Hive.registerAdapter(ItemLocationAdapter());
  Hive.registerAdapter(ItemModelAdapter());

  getIt.registerSingleton<IItemRemoteDatasource>(ItemRemoteDataSource(Dio()));
  getIt.registerSingleton<IItemLocalDatasource>(ItemLocalDataSource());
  getIt.registerSingleton<ISharedPreferencesDataSource>(
      SharedPreferencesDataSource(sharedPreferences));

  getIt.registerSingleton<IItemRepository>(
    ItemRepository(
      getIt.get<IItemRemoteDatasource>(),
      getIt.get<IItemLocalDatasource>(),
    ),
  );
  getIt.registerSingleton<ISettingsRepository>(
    SettingsRepository(getIt.get<ISharedPreferencesDataSource>()),
  );

  getIt.registerSingleton<IItemUseCases>(ItemUseCases(getIt.get<IItemRepository>()));
  getIt.registerSingleton<ISettingsUseCases>(SettingsUseCases(getIt.get<ISettingsRepository>()));

  getIt.registerFactory<HomeBloc>(() => HomeBloc());
  getIt.registerFactory<SettingsBloc>(
      () => SettingsBloc(getIt.get<ISettingsUseCases>())..add(Init()));
  getIt.registerFactory<ItemsListBloc>(() => ItemsListBloc(getIt.get<IItemUseCases>()));
}
