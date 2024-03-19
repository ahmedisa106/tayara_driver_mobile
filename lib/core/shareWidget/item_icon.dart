import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ItemIcon extends StatelessWidget {
  const ItemIcon({
    Key? key,
    required this.icon,
    this.fontWeight,
    this.widget,
    required this.title,
  }) : super(key: key);
  final String icon, title;
  final FontWeight? fontWeight;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(icon),
          width: 5.5.w,
        ),
        SizedBox(
          width: 2.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: fontWeight ?? FontWeight.w800,
                fontSize: 12.sp,
              ),
            ),
            widget ?? Container(),
          ],
        ),
      ],
    );
  }
}
