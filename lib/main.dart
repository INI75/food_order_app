import 'package:flutter/material.dart';
import 'package:food_order_app/Screens/Food/popular_food_details.dart';
import 'package:food_order_app/Screens/Food/recommended_food_detail.dart';
import 'package:food_order_app/Screens/home/main_food_page.dart';
import 'package:food_order_app/controllers/popular_product_controller.dart';
import 'package:food_order_app/helper/dependencies.dart' as dep;
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    return GetMaterialApp(
      title: 'Food Order App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainFoodPage(),
      routes: {
        PopularFoodDetails.routeName: (context) => const PopularFoodDetails(),
        RecommendFoodDetail.routeName: (context) => const RecommendFoodDetail(),
      },
    );
  }
}
