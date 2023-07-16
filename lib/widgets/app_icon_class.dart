import 'package:flutter/material.dart';
import 'package:food_order_app/utils/dimensions.dart';

class AppIcon extends StatelessWidget {
  const AppIcon(
      {super.key,
      required this.icon,
      this.backgroundcolor,
      this.iconcolor,
      this.size,
      this.function, this.iconsize});

  final IconData icon;
  final Color? backgroundcolor;
  final Color? iconcolor;
  final double? size;
  final double? iconsize;
  final VoidCallback? function;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        alignment: Alignment.center,
        height: size ?? 40,
        width: size ?? 40,
        decoration: BoxDecoration(
          color: backgroundcolor ?? const Color(0xFFfcf4e4),
          borderRadius: BorderRadius.circular((size ?? 40) / 2),
        ),
        child: Icon(
          icon,
          size: iconsize ?? Dimensions.heightP(.027),
          color: iconcolor ?? const Color(0xFF756d54),
        ),
      ),
    );
  }
}
