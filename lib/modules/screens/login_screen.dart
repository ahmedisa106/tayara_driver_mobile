import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:tayara_driver_mobile/Utils/color_manager.dart';
import 'package:tayara_driver_mobile/core/shareWidget/custom_button.dart';
import 'package:tayara_driver_mobile/core/shareWidget/custom_text.dart';
import 'package:tayara_driver_mobile/core/shareWidget/custom_text_field.dart';
import 'package:tayara_driver_mobile/modules/screens/home_index.dart';
import 'package:tayara_driver_mobile/utils/go_to.dart';

import '../../generated/l10n.dart';
import '../../utils/assets_manager.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backGround,
      appBar: AppBar(
        backgroundColor: ColorManager.backGround,
        foregroundColor: ColorManager.backGround,
        title: RegularText(
          text: S.of(context).login,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
        height: 100.h,
        width: 100.w,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                AppAssets.logo,
              ),
              SizedBox(height: 6.h,),
              Row(
                children: [
                  RegularText(
                    text: S.of(context).welcome,
                    color: ColorManager.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(width: 1.w,),
                  RegularText(
                    text: S.of(context).return_back,
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: RegularText(
                  text: S.of(context).login_msg,
                  size: 12.sp,
                ),
              ),
              SizedBox(height: 4.h,),
              CustomTextField(
                  hintText: S.of(context).phone_number,
                  prefix: const Icon(Icons.local_phone),
                  keybordType: TextInputType.phone,
                  hidden: false,
              ),
              SizedBox(height: 2.h,),
              CustomTextField(
                hintText: S.of(context).password,
                prefix: const Icon(Icons.lock_outlined),
                maxLines: 1,
                hidden: true,
              ),
              SizedBox(height: 4.h,),

              CustomButton(
                  onTap: (){
                    GoTo.screenAndRemoveUntil(HomeIndexScreen());
                  },
                  text: S.of(context).login)
            ],
          ),
        ),
      ),
    );
  }
}
