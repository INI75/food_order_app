import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double heightP(double percentageheight) {
    double a = screenHeight * percentageheight;
    return a;
  }

  static double widthP(double percentagewidth) {
    double a = percentagewidth * screenWidth;
    return a;
  }
}

class ResponsiveSizedBox extends StatelessWidget {
  const ResponsiveSizedBox({super.key, this.height, this.width, this.child});

  final double? height;
  final double? width;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return SizedBox(
      height: height == null ? 0 : (height! * (_media.height)),
      width: width == null ? 0 : (width! * (_media.width)),
      child: child,
    );
  }
}
