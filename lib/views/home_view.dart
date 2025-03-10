// home_view.dart
import 'package:flutter/material.dart';
import 'restaurant_search_view.dart'; 

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // 使用 Navigator.push 進行頁面跳轉
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RestaurantSearchView()),
            );
          },
          child: const Text('Go to Restaurant Search'),
        ),
      ),
    );
  }
}
