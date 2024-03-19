import '../shareWidget/custom_text.dart';
import '../../utils/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../Utils/color_manager.dart';
import '../../utils/box_shadow.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {this.onTap,
      required this.text,
      this.height,
      this.width,
      this.color,
      this.radius,
      this.fontSize,
      Key? key})
      : super(key: key);
  final String text;
  final Color? color;
  final double? height;
  final double? width;
  final void Function()? onTap;
  final double? radius;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height ?? 45,
        width: width ?? 100.w,
        decoration: BoxDecoration(
            color: color ?? ColorManager.primaryColor,
            borderRadius: BorderRadius.circular(radius ?? 10)),
        child: Center(
          child: RegularText(
            text: text,
            color: ColorManager.white,
            size: fontSize ?? 12.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {this.onTap,
      required this.text,
      this.height,
      this.width,
      this.color,
      this.radius,
      this.widget,
      this.fontSize,
      Key? key})
      : super(key: key);
  final String text;
  final Color? color;
  final double? height;
  final double? width;
  final void Function()? onTap;
  final double? radius;
  final double? fontSize;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height ?? 7.5.h,
        width: width ?? 100.w,
        decoration: BoxDecoration(
            color: color ?? ColorManager.primaryColor,
            borderRadius: BorderRadius.circular(radius ?? 10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget!,
            AppSize.spaceWidth2(context),
            RegularText(
              text: text,
              color: ColorManager.white,
              size: fontSize ?? 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSecondaryButton extends StatelessWidget {
  const CustomSecondaryButton(
      {required this.onTap,
      required this.text,
      this.height,
      this.width,
      this.color,
      this.widget,
      Key? key})
      : super(key: key);
  final String text;
  final Color? color;
  final double? height;
  final double? width;
  final Widget? widget;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          height: height ?? 7.5.h,
          width: width ?? 100.w,
          decoration: BoxDecoration(
              color:  ColorManager.white,
              border: Border.all(color: color ?? ColorManager.primaryColor),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget!,
              AppSize.spaceWidth2(context),
              RegularText(
                text: text,
                color:color ?? ColorManager.primaryColor,
                size: 12.sp,
                fontWeight: FontWeight.bold,
              ),
            ],
          )),
    );
  }
}

class CustomShadowButton extends StatelessWidget {
  const CustomShadowButton(
      {required this.onTap,
      required this.text,
      this.icon,
      this.height,
      this.width,
      this.textColor,
      this.color,
      Key? key})
      : super(key: key);
  final String text;
  final Widget? icon;
  final Color? color;
  final Color? textColor;
  final double? height;
  final double? width;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height ?? 4.h,
        width: width ?? 100.w,
        decoration: BoxDecoration(
            boxShadow: AppBoxShadow.selectedBoxShadow(),
            color: color ?? ColorManager.white,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) icon!,
            SizedBox(
              width: 3.w,
            ),
            RegularText(
              text: text,
              color: textColor ?? ColorManager.primaryColor,
              size: 12.sp,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
