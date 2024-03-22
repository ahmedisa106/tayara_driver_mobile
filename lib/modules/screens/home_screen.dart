import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:tayara_driver_mobile/Utils/color_manager.dart';
import 'package:tayara_driver_mobile/core/shareWidget/custom_text.dart';
import 'package:tayara_driver_mobile/modules/screens/order_detail_screen.dart';
import 'package:tayara_driver_mobile/utils/go_to.dart';

import '../../generated/l10n.dart';
import '../../utils/assets_manager.dart';
import '../../utils/box_shadow.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              // user data
              Row(
                children: [
                  // user image
                  Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: ColorManager.primaryColor,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: AppBoxShadow.selectedBoxShadow(),
                    ),
                    child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child: Image.asset(AppAssets.logo)),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  // user name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RegularText(
                        text: S.of(context).welcome,
                        color: ColorManager.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                      const RegularText(text: "Mohamed Talaat"),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              // order in action
              RegularText(
                text: S.of(context).orders,
                fontWeight: FontWeight.bold,
              ),
              Expanded(
                child: ListView.separated(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        GoTo.screen(const OrderDetailsScreen());
                      },
                      child: orderCard(context),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 2.h,
                    );
                  },
                ),
              ),
            ],
          )),
    );
  }

  orderCard(context){
    return Container(
      padding:
      EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: AppBoxShadow.selectedBoxShadow(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // store image
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
                  RegularText(
                    text: "Example store",
                    fontWeight: FontWeight.bold,
                    size: 12.sp,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                        color:
                        ColorManager.red.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(5)),
                    child: RegularText(
                      text: "جاري التوصيل",
                      size: 9.sp,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    children: [
                      RegularText(
                        text: "#123456",
                        size: 10.sp,
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      RegularText(
                        text: "15/3/2024",
                        size: 10.sp,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          const Divider(),
          SizedBox(
            height: 1.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RegularText(
                text: S.of(context).order_details,
                size: 10.sp,
              ),
              RegularText(
                text: "5 items",
                size: 10.sp,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          SizedBox(
            height: .5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RegularText(
                text: S.of(context).total_payment,
                size: 10.sp,
              ),
              RegularText(
                text: "100 LE",
                color: ColorManager.primaryColor,
                fontWeight: FontWeight.bold,
                size: 10.sp,
              ),
            ],
          ),


        ],
      ),
    );
  }
}
