import 'package:flutter/material.dart';
import 'package:food_order_app/widgets/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  const IconAndTextWidget({
    super.key,
    required this.text,
    required this.icon,
     this.textcolor,
    required this.iconcolor,
  });

  final String text;
  final IconData icon;
  final Color? textcolor;
  final Color iconcolor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconcolor,
        ),
        const SizedBox(width: 5),
        SmallText(
          text: text,
          color: textcolor,
        )
      ],
    );
  }
}
