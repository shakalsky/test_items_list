import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_items_list/injector.dart';
import 'package:test_items_list/presentation/pages/home/home_page.dart';
import 'package:test_items_list/presentation/pages/settings/settings.bloc.dart';
import 'package:toastification/toastification.dart';

Future<void> main() async {
  await setupInjector();
  await getIt.allReady();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: MaterialApp(
        title: 'Flutter Demo',
        home: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => getIt.get<SettingsBloc>(),
            ),
          ],
          child: MyHomePage(title: 'Main'),
        ),
      ),
    );
  }
}
