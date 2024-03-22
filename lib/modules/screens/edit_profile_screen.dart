import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:tayara_driver_mobile/Utils/color_manager.dart';
import 'package:tayara_driver_mobile/core/shareWidget/custom_button.dart';
import 'package:tayara_driver_mobile/utils/custom_app_bar.dart';

import '../../core/shareWidget/custom_text_field.dart';
import '../../generated/l10n.dart';
import '../../utils/assets_manager.dart';
import '../../utils/box_shadow.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backGround,
      appBar: mainAppBar(context, title: S.of(context).edit_profile),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
        height: 100.h,
        width: 100.w,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: ColorManager.primaryColor,
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: AppBoxShadow.selectedBoxShadow(),
                    ),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.white,
                      child: SvgPicture.asset(
                        AppAssets.user,
                        width: 50,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: AppBoxShadow.selectedBoxShadow(),
                    ),
                    child: SvgPicture.asset(
                      AppAssets.gallery,
                      color: ColorManager.primaryColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.h,),
              CustomTextField(
                hintText: S.of(context).phone_number,
                prefix: const Icon(Icons.person),
                keybordType: TextInputType.phone,
                hidden: false,
              ),
              CustomTextField(
                hintText: S.of(context).email,
                prefix: const Icon(Icons.email_outlined),
                keybordType: TextInputType.emailAddress,
                hidden: false,
              ),
              CustomTextField(
                hintText: S.of(context).phone_number,
                prefix: const Icon(Icons.local_phone),
                keybordType: TextInputType.phone,
                hidden: false,
              ),
              CustomTextField(
                hintText: S.of(context).phone_number,
                prefix: const Icon(Icons.local_phone),
                keybordType: TextInputType.phone,
                hidden: false,
              ),
              SizedBox(height: 4.h,),
              CustomButton(text: S.of(context).save)
            ],
          ),
        ),
      ),
    );
  }
}
