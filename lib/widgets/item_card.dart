import 'package:flutter/material.dart';
import 'package:food_order_app/utils/dimensions.dart';
import 'package:food_order_app/widgets/big_text.dart';
import 'package:food_order_app/widgets/small_text.dart';

import '../utils/colors.dart';
import 'icon_and_text_widget.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.function});
  final VoidCallback function;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        margin: EdgeInsets.only(
            bottom: 8,
            left: Dimensions.widthP(.04),
            right: Dimensions.widthP(.04)),
        child: Row(
          children: [
            Container(
              height: Dimensions.heightP(.14),
              width: Dimensions.widthP(.32),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  Dimensions.heightP(.02),
                ),
                // color: Colors.white38,
                image: const DecorationImage(
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
                child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(
                        text: 'Nutritious fruit meal in China',
                        color: Colors.black,
                      ),
                      ResponsiveSizedBox(height: .015),
                      SmallText(text: 'With Chinese characteristics'),
                      ResponsiveSizedBox(height: .015),
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
