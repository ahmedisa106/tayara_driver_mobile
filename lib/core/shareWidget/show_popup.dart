
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../Utils/color_manager.dart';
import '../../generated/l10n.dart';
import 'custom_button.dart';
import 'custom_text.dart';

class ShowPopup extends StatelessWidget {
  const ShowPopup({
    Key? key,
    this.image,
    required this.title,
    required this.subTitle,
    required this.btnTitle,
    required this.function,
    this.titleColor,
    this.height,
  }) : super(key: key);
  final String? image;
  final String title;
  final String subTitle;
  final String btnTitle;
  final Function function;
  final Color? titleColor;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      content: SizedBox(
        height: height ?? 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if(image != null)
            Center(
                child: SizedBox(
              height: 40,
              child: Image(image: AssetImage(image!)),
            ),),
            const SizedBox(height: 10,),
            RegularText(
                text: title,
              center: true,
              color: titleColor,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 10,),
            RegularText(
              text: subTitle,
              size: 11.sp,
              maxLines: 3,
              center: true,
            ),
          ],
        ),
      ),
      actions: <Widget>[
        SizedBox(
          width: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                text: S.of(context).cancel,
                color: ColorManager.red,
                fontSize: 10.sp,
                width: 120,
                height: 45,
              ),
              CustomButton(
                onTap: () {
                  function();
                  Navigator.pop(context);
                },
                text: btnTitle,
                fontSize: 10.sp,
                color: ColorManager.primaryColor,
                width: 120,
                height: 45,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
