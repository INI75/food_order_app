import 'package:flutter/material.dart';
import 'package:food_order_app/home/food_page_body.dart';
import 'package:food_order_app/utils/colors.dart';
import 'package:food_order_app/utils/dimensions.dart';
import 'package:food_order_app/widgets/big_text.dart';
import 'package:food_order_app/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: Dimensions.heightP(.04), bottom: 15),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(
                        text: 'Nigeria',
                        color: AppColors.mainColor,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: 'City',
                            color: Colors.black,
                          ),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      height: Dimensions.heightP(0.070), // 45,
                      width: Dimensions.heightP(0.070), //45
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.heightP(0.02)),
                          color: AppColors.mainColor),
                      child: const Icon(Icons.search, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: FoodPageBody(),
            ),
          )
        ],
      ),
    );
  }
}
