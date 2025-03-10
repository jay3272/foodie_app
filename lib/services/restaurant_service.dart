import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/restaurant.dart';

class RestaurantService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // 獲取餐廳資料
  Future<List<Restaurant>> getRestaurants(String query) async {
    try {
      final querySnapshot = await _db
          .collection('restaurants') // 假設你在 Firestore 中有 "restaurants" 集合
          .where('name', isGreaterThanOrEqualTo: query) // 按名稱進行篩選
          .get();

      return querySnapshot.docs
          .map((doc) => Restaurant.fromMap(doc.data() as Map<String, dynamic>))
          .toList();
    } catch (e) {
      print("Error fetching restaurants: $e");
      return [];
    }
  }
}
