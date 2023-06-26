import 'package:flutter/material.dart';
import 'package:food_order_app/utils/dimensions.dart';
import 'package:food_order_app/widgets/big_text.dart';
import 'package:food_order_app/widgets/small_text.dart';

import '../utils/colors.dart';
import 'icon_and_text_widget.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Container(
            height: 110,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                Dimensions.heightP(.02),
              ),
              // color: Colors.white38,
              image: DecorationImage(
                  image: AssetImage('assets/image/food0.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                        Dimensions.heightP(.02),
                      ),
                      bottomRight: Radius.circular(
                        Dimensions.heightP(.02),
                      )),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BigText(
                    text: 'Nutritious fruit meal in China',
                    color: Colors.black,
                  ),
                  SmallText(text: 'With Chinese characteristics'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconAndTextWidget(
                        text: 'Normal',
                        icon: Icons.circle_sharp,
                        iconcolor: AppColors.iconColor1,
                      ),
                      IconAndTextWidget(
                        text: '1.7 km',
                        icon: Icons.location_on,
                        iconcolor: AppColors.mainColor,
                      ),
                      IconAndTextWidget(
                        text: '32 min',
                        icon: Icons.access_time_rounded,
                        iconcolor: AppColors.iconColor2,
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
