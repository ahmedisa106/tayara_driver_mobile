import '../../Utils/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'custom_text.dart';

class DefaultCheckBox extends StatefulWidget {
  final String text;
  final ValueChanged<bool?> onChange;
  final bool? isChecked;
  final Color? color;

  const DefaultCheckBox({
    Key? key,
    required this.text,
    required this.onChange,
    required this.isChecked,
    this.color,
  }) : super(key: key);

  @override
  State<DefaultCheckBox> createState() => _DefaultCheckBoxState();
}

class _DefaultCheckBoxState extends State<DefaultCheckBox> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 4.h,
      child: Row(
        children: [
          Checkbox(
            splashRadius: 2.w,
            side: const BorderSide(
              color: ColorManager.lightGrey,
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            checkColor: ColorManager.white,
            activeColor: ColorManager.lightGrey,
            value: widget.isChecked,
            onChanged: widget.onChange,
          ),
          RegularText(
              text: widget.text,
              color: ColorManager.lightGrey,
              fontWeight: FontWeight.bold,
              size: 11.sp)
        ],
      ),
    );
  }
}
