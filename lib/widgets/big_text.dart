import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  BigText({
    super.key,
    this.color = const Color(0xFF89dad0),
    required this.text,
    this.size = 20,
    this.overflow = TextOverflow.ellipsis,
  });

  Color? color;
  final String text;
  double? size;
  TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style:
          TextStyle(color: color, fontSize: size, fontWeight: FontWeight.w400),
    );
  }
}
