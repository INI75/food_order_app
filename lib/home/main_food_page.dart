import 'package:flutter/material.dart';
import 'package:food_order_app/utils/colors.dart';
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
              margin: const EdgeInsets.only(top: 45, bottom: 15),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: 'Nigeria',
                        color: AppColors.mainColor,
                      ),
                      SmallText(
                        text: 'City',
                        color: Colors.black,
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      height: 45,
                      width: 45,
                      child: const Icon(Icons.search, color: Colors.white),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.mainColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
