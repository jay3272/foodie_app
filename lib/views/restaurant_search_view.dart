import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_models/restaurant_search_view_model.dart';

class RestaurantSearchView extends StatelessWidget {
  const RestaurantSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    final searchModel = Provider.of<RestaurantSearchViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('餐廳搜尋'),
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              // 當用戶輸入搜尋詞時，觸發搜尋操作
              searchModel.searchRestaurants(value);
            },
            decoration: InputDecoration(
              hintText: '搜尋餐廳...',
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: searchModel.restaurants.length,
              itemBuilder: (context, index) {
                final restaurant = searchModel.restaurants[index];
                return ListTile(
                  title: Text(restaurant.name),
                  subtitle: Text(restaurant.description),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
