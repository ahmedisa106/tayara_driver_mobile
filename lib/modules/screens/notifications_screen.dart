import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:tayara_driver_mobile/Utils/color_manager.dart';

import '../../core/shareWidget/custom_text.dart';
import '../../generated/l10n.dart';
import '../../utils/assets_manager.dart';
import '../../utils/box_shadow.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backGround,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
        height: 100.h,
        width: 100.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            RegularText(
              text: S.of(context).notifications,
              fontWeight: FontWeight.bold,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return notificationCard(context, index < 3 ? true : false);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 2.h,
                  );
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
  notificationCard(context, bool isSeen) {
    return Container(
      padding:
      EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
      decoration: BoxDecoration(
        color:  isSeen ? ColorManager.primaryColor.withOpacity(0.1) : Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: AppBoxShadow.selectedBoxShadow(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(7),
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: AppBoxShadow.selectedBoxShadow(),
                ),
                child: Image.asset(AppAssets.logo),
              ),
              SizedBox(
                width: 3.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 65.w,
                    child: RegularText(
                      text: "Discount 50% on all sandwiches",
                      fontWeight: FontWeight.bold,
                      maxLines: 2,
                      size: 11.sp,
                    ),
                  ),
                  SizedBox(
                    height: .5.h,
                  ),
                  SizedBox(
                    width: 65.w,
                    child: RegularText(
                      text: "discount on family meals",
                      maxLines: 3,
                      size: 10.sp,
                    ),
                  ),
                  RegularText(
                    text: "from 3 min",
                    color: ColorManager.primaryColor,
                    size: 10.sp,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

}
