import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:test_items_list/domain/usecases/item_use_cases.dart';
import 'package:test_items_list/injector.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextButton(
              onPressed: () {
                log(getIt.get<ItemUseCases>().getItems().toString());
              },
              child: const Text('Get Items')),
        ],
      ),
    );
  }
}
