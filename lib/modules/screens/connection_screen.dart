import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../../../generated/l10n.dart';
import '../../../utils/assets_manager.dart';
import '../../Utils/color_manager.dart';
import '../../core/shareWidget/custom_button.dart';
import '../../core/shareWidget/custom_text.dart';
import '../../utils/go_to.dart';

class ConnectionScreen extends StatelessWidget {
  const ConnectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 4.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Lottie.asset(AppAssets.appNoInternet,),
           RegularText(
               text: S.of(context).no_internet,
             fontWeight: FontWeight.bold,
             size: 16.sp,
           ),
           SizedBox(height: 4.h,),
           CustomButton(
             onTap: (){
               // GoTo.screenAndRemoveUntil(const HomeIndex());
             },
               text: S.of(context).home,
             color: ColorManager.primaryColor,
           ),
         ],
        ),
      ),
    );
  }
}
