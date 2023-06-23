import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  const BigText({
    super.key,
    this.color,
    required this.text,
    this.size ,
    this.overflow
  });

  final Color? color;
  final String text;
  final  double? size;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow??TextOverflow.ellipsis,
      style: TextStyle(
        color: color??const Color(0xFF89dad0),
        fontSize: size??20,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
