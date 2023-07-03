import 'package:flutter/material.dart';
import 'package:food_order_app/utils/colors.dart';
import 'package:food_order_app/utils/dimensions.dart';
import 'package:food_order_app/widgets/app_column.dart';
import 'package:food_order_app/widgets/app_icon_class.dart';
import 'package:food_order_app/widgets/big_text.dart';
import 'package:food_order_app/widgets/expandable_text.dart';

class PopularFoodDetails extends StatelessWidget {
  static const routeName = '/popularFoodDetails';
  const PopularFoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          top: Dimensions.heightP(.37),
          right: 0,
          bottom: 0,
          child: Container(
              padding: EdgeInsets.only(
                  left: Dimensions.widthP(.04),
                  right: Dimensions.widthP(.04),
                  top: Dimensions.heightP(.02)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.heightP(.03)),
                      topRight: Radius.circular(Dimensions.heightP(.03))),
                  color: Colors.white),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(
                    text: 'Chinese Side',
                  ),
                  ResponsiveSizedBox(height: .025),
                  BigText(
                    text: 'Introduce',
                    color: Colors.black,
                  ),
                  ResponsiveSizedBox(height: .025),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                          text:
                              'This is dummy data This is dummy dataThis is dummy dataThis is dummy dataThis is dummy dataThis is dummy dataThis is dummy dataThis is dummy dataThis is dummy dataThis is dummy dataThis is dummy dataThis is dummy dataThiaThis is dummy dataThis is dummy dataThis is dummy dataThis is dummy dataThis is dummy dataThis is dummy dataThis is dummy dataThis is dummy dataThis is dummy dataThis is dummy dataThis is dummy dataThis is dummy dataThis is dummy dat'),
                    ),
                  )
                ],
              )),
        ),
      ]),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
            vertical: Dimensions.heightP(.03),
            horizontal: Dimensions.widthP(.03)),
        height: Dimensions.heightP(.15),
        // height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimensions.heightP(.04)),
              topRight: Radius.circular(Dimensions.heightP(.04))),
        ),

        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            height: Dimensions.heightP(.07),
            width: Dimensions.widthP(.34),
            padding: EdgeInsets.symmetric(
                horizontal: Dimensions.widthP(.02),
                vertical: Dimensions.heightP(.02)),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                Dimensions.heightP(0.02),
              ),
            ),
            child: const Row(children: [
              Icon(
                Icons.remove,
                color: AppColors.signColor,
              ),
              ResponsiveSizedBox(
                width: .069,
              ),
              BigText(
                text: '0',
                color: Colors.black,
              ),
              ResponsiveSizedBox(
                width: .069,
              ),
              Icon(
                Icons.add,
                color: AppColors.signColor,
              )
            ]),
          ),
          Container(
            height: Dimensions.heightP(.085),
            width: Dimensions.widthP(.4),
            padding: EdgeInsets.symmetric(
                horizontal: Dimensions.widthP(.02),
                vertical: Dimensions.heightP(.02)),
            decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.circular(
                Dimensions.heightP(0.02),
              ),
            ),
            alignment: Alignment.center,
            child: BigText(text: '\$ 10 | add to cart', color: Colors.white),
          )
        ]),
      ),
    );
  }
}
