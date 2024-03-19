import '../../Utils/color_manager.dart';
import '../../utils/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../../generated/l10n.dart';
import 'custom_button.dart';

class AppNoData extends StatelessWidget {
  const AppNoData({
    this.height,
    this.onTap,
    super.key});
  final double? height;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: height ?? 50.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              AppAssets.appNoData,
              width: 60.w,
              height: 30.h,
            ),
            Text(
              S.of(context).no_data,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                  color: ColorManager.primaryColor),
            ),
            SizedBox(
              height: 4.h,
            ),
            if(onTap != null)
            CustomButton(
              onTap: onTap,
                text: S.of(context).try_again,
              color: ColorManager.primaryColor,
              width: 60.w,
            ),
          ],
        ),
      ),
    );
  }
}
