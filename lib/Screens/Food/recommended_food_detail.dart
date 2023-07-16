import 'package:flutter/material.dart';
import 'package:food_order_app/utils/colors.dart';
import 'package:food_order_app/utils/dimensions.dart';
import 'package:food_order_app/widgets/app_icon_class.dart';
import 'package:food_order_app/widgets/big_text.dart';
import 'package:food_order_app/widgets/expandable_text.dart';

class RecommendFoodDetail extends StatelessWidget {
  static const routeName = '/recommendfooddetails';
  const RecommendFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 70,
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(
                    icon: Icons.clear,
                    function: () {
                      Navigator.pop(context);
                    },
                  ),
                  AppIcon(
                    icon: Icons.shopping_cart_checkout_outlined,
                    function: () {},
                  )
                ]),
            // expandedHeight: 200,
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(Dimensions.heightP(.035)),
              child: Container(
                  // height: Dimensions.heightP(.1),

                  alignment: Alignment.center,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        Dimensions.heightP(.035),
                      ),
                      topRight: Radius.circular(
                        Dimensions.heightP(.035),
                      ),
                    ),
                  ),
                  padding: EdgeInsets.only(
                      top: Dimensions.heightP(.005),
                      bottom: Dimensions.heightP(.01)),
                  child: BigText(
                    text: 'Chinese Sides',
                    color: Colors.black,
                    size: Dimensions.heightP(.035),
                  )),
            ),
            expandedHeight: Dimensions.heightP(.32),

            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
              'assets/image/food0.png',
              width: double.maxFinite,
              fit: BoxFit.cover,
            )),
          ),

          /////
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: Dimensions.widthP(.025)),
                  child: ExpandableTextWidget(
                      text:
                          'Dummy Data Dummy DataDummy DataDummy DataDummyeejjjjjjjjjjjjjjjjsad aiojk dc dc jdc dcj id a jcdc jd vdd dcjc cd cpok lfk  DataDummy DataDummy sdsdcxsvadzxEVSDZXWbdvrs zCDVS ZCXBzdxDataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy Data Dummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy DataDummy Data'),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppIcon(
              icon: Icons.remove,
              backgroundcolor: AppColors.mainColor,
              iconcolor: Colors.white,
              // size: Dimensions.heightP(0.05),
              iconsize: Dimensions.heightP(0.035),
              function: () {},
            ),
            AppIcon(
              icon: Icons.add,
              backgroundcolor: AppColors.mainColor,
              iconcolor: Colors.white,
              // size: Dimensions.heightP(0.05),
              iconsize: Dimensions.heightP(0.035),
              function: () {},
            ),
          ],
        )
      ]),
    );
  }
}
