import 'package:food_order_app/controllers/popular_product_controller.dart';
import 'package:food_order_app/data/api/api_client.dart';
import 'package:food_order_app/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

Future<void> init() async {
  /// API client
  Get.lazyPut(
    () => ApiClient(appBaseUrl: 'https://mvs.bslmeiyu.com'),
  );

//// Repo
  Get.lazyPut(
    () => PopularProductRepo(
      apiClient: Get.find(),
    ),
  );

  ////  //Controller
  Get.lazyPut(
    () => PopularProductController(
      popularProductRepo: Get.find(),
    ),
  );
}
