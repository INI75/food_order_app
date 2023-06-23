import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  const SmallText({
    super.key,
    required this.text,
    this.size,
    this.height,
    this.color,
  });

  final Color? color;
  final String text;
  final double? size;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? const Color(0xFFccc7c5),
        height: height ?? 1.2,
        fontSize: size ?? 12,
        fontFamily: 'Roboto',
      ),
    );
  }
}
