import 'package:flutter/material.dart';
import 'package:food_order_app/utils/colors.dart';
import 'package:food_order_app/utils/dimensions.dart';

import 'big_text.dart';
import 'icon_and_text_widget.dart';
import 'small_text.dart';

class AppColumn extends StatelessWidget {
  const AppColumn({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimensions.heightP(.038),
          color: Colors.black,
        ),
        const ResponsiveSizedBox(height: .01),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                  (index) => const Icon(
                        Icons.star,
                        color: AppColors.mainColor,
                        size: 15,
                      )),
            ),
            const ResponsiveSizedBox(width: 0.015),
            const SmallText(text: '4.5'),
            const ResponsiveSizedBox(width: 0.015),
            const SmallText(text: '1287'),
            const ResponsiveSizedBox(width: 0.015),
            const SmallText(text: 'Comments'),
          ],
        ),
        const ResponsiveSizedBox(height: .015),
        // const SizedBox(height: 20),
        // Dimensions.sizeboxR(heightPercentage: .02),
        const Row(
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
    );
  }
}
