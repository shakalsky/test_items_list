import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_items_list/injector.dart';
import 'package:test_items_list/presentation/pages/home/home_bloc.dart';
import 'package:test_items_list/presentation/pages/home/home_state.dart';
import 'package:test_items_list/presentation/pages/items_list/items_list_bloc.dart';
import 'package:test_items_list/presentation/pages/items_list/items_list_page.dart';
import 'package:test_items_list/presentation/pages/settings/settings.bloc.dart';
import 'package:test_items_list/presentation/pages/settings/settings_page.dart';
import 'package:test_items_list/presentation/pages/settings/settings_state.dart';

const pages = [
  'Главная',
  'Настройки',
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        darkTheme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            brightness: Brightness.dark,
          ),
          useMaterial3: true,
        ),
        themeMode: state.themeMode == AppThemeMode.dark ? ThemeMode.dark : ThemeMode.light,
        home: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => getIt.get<HomeBloc>(),
            ),
            BlocProvider(
              create: (_) => getIt.get<ItemsListBloc>()..add(GetItems()),
            ),
          ],
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) => Scaffold(
              appBar: AppBar(
                title: Text(pages[state.selectedTab]),
              ),
              backgroundColor: Theme.of(context).colorScheme.surfaceContainerLow,
              body: state.selectedTab == 0 ? const MainPage() : SettingsPage(),
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: state.selectedTab,
                onTap: (index) => context.read<HomeBloc>().add(ChangeTab(index)),
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: pages[0],
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: pages[1],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
