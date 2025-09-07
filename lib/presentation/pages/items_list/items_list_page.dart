import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Добро пожаловать на главную страницу!',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          const Text(
            'Это главная вкладка вашего приложения.',
          ),
        ],
      ),
    );
  }
}
