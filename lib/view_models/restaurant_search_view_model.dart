import 'package:flutter/material.dart';
import '../models/restaurant.dart';
import '../services/restaurant_service.dart';

class RestaurantSearchViewModel extends ChangeNotifier {
  List<Restaurant> _restaurants = [];
  List<Restaurant> get restaurants => _restaurants;

  final RestaurantService _restaurantService = RestaurantService();

  // 搜尋餐廳
  void searchRestaurants(String query) async {
    _restaurants = await _restaurantService.getRestaurants(query);
    notifyListeners();
  }
}
