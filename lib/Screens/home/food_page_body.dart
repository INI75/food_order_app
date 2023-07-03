import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app/Screens/Food/popular_food_details.dart';
import 'package:food_order_app/utils/colors.dart';
import 'package:food_order_app/utils/dimensions.dart';
import 'package:food_order_app/widgets/app_column.dart';
import 'package:food_order_app/widgets/big_text.dart';
import 'package:food_order_app/widgets/item_card.dart';
import 'package:food_order_app/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pagecontroller = PageController(
    viewportFraction: 0.85,
  );
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = 220;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pagecontroller.addListener(() {
      setState(() {
        _currPageValue = pagecontroller.page!;
        print('object = $_currPageValue');
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pagecontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // color: Colors.amber,

          // color: AppColors.paraColor,
          // height: 320,
          height: Dimensions.heightP(.34),
          child: PageView.builder(
            controller: pagecontroller,
            itemCount: 5,
            itemBuilder: (context, position) {
              return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, PopularFoodDetails.routeName);
                  },
                  child: _buildPageItem(position));
            },
          ),
        ),
        DotsIndicator(
          dotsCount: 5,
          position: _currPageValue.floor(),
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        const ResponsiveSizedBox(
          height: 0.015,
        ),
        Container(
          margin: EdgeInsets.only(left: Dimensions.widthP(.04)),
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: 'Popular', color: Colors.black),
              SizedBox(width: 10),
              Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: SmallText(text: ': Food pairing'),
              ),
            ],
          ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 20,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return const ItemCard();
          },
        )
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 0);
    }

    //
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            // height: 220,
            height: Dimensions.heightP(.25),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.heightP(0.03)),
              color: index.isEven ? AppColors.mainColor : AppColors.paraColor,
              image: const DecorationImage(
                  image: AssetImage('assets/image/food0.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              // height: 120,
              height: Dimensions.heightP(.145),
              margin: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.heightP(0.02)),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Color(0xFFe8e8e8),
                      blurRadius: 5,
                      offset: Offset(0, 5)),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5, 0),
                  ),
                ],
              ),
              child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 15,
                    right: 15,
                  ),
                  child: AppColumn(text: 'Chinese Side')),
            ),
          )
        ],
      ),
    );
  }
}
