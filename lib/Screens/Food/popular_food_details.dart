import 'package:flutter/material.dart';
import 'package:food_order_app/utils/dimensions.dart';
import 'package:food_order_app/widgets/app_icon_class.dart';

class PopularFoodDetails extends StatelessWidget {
  static const routeName = '/popularFoodDetails';
  const PopularFoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
          left: 0,
          right: 0,
          child: Container(
            width: double.maxFinite,
            height: Dimensions.heightP(.4),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/image/food0.png'))),
          ),
        ),
        Positioned(
          top: Dimensions.heightP(.05),
          left: Dimensions.widthP(.04),
          right: Dimensions.widthP(.04),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppIcon(
                  icon: Icons.arrow_back_ios_new,
                  function: () => Navigator.pop(context),
                  size: Dimensions.heightP(.05)),
              AppIcon(
                  icon: Icons.shopping_cart_outlined,
                  size: Dimensions.heightP(.05)),
            ],
          ),
        ),
        Positioned(
          left: 0,
          top: Dimensions.heightP(.4),
          right: 0,
          child: Container(
            padding: EdgeInsets.only(
                left: Dimensions.widthP(.04),
                right: Dimensions.widthP(.04),
                top: Dimensions.heightP(.09)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(.02), color: Colors.white),
          ),
        ),
      ]),
    );
  }
}
