import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';  // 引入 provider 套件
import '../views/home_view.dart'; // 引入 HomeView
import '../view_models/restaurant_search_view_model.dart'; // 引入你的 view model

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 初始化 Firebase
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyDRe2e8320u43iRgSshKKJ7CRuOorEaMsU",
      authDomain: "foodieapp-b959b.firebaseapp.com",
      projectId: "foodieapp-b959b",
      storageBucket: "foodieapp-b959b.firebasestorage.app",
      messagingSenderId: "621644392374",
      appId: "1:621644392374:web:96be796c73a4ed8210c317",
      measurementId: "G-GL1FFXQC2R",
    ),
  );

  // 記得運行應用
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider( // 使用 MultiProvider 來包裹整個應用
      providers: [
        ChangeNotifierProvider(create: (context) => RestaurantSearchViewModel()), // 提供 RestaurantSearchViewModel
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
        routes: {
          '/home': (context) => const HomeView(),
        },
      ),
    );
  }
}
