import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  SmallText({
    super.key,
    required this.text,
    this.size = 12,
    this.height = 1.2,
    this.color = const Color(0xFFccc7c5),
  });

  Color? color;
  final String text;
  double? size;
  double? height;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color, height: height, fontSize: size, fontFamily: 'Roboto'),
    );
  }
}
