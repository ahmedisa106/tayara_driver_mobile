import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tayara_driver_mobile/core/shareWidget/custom_button.dart';

import '../../../Utils/color_manager.dart';
import '../../../core/shareWidget/custom_text_field.dart';
import '../../../generated/l10n.dart';
import '../../../utils/assets_manager.dart';
import '../../../utils/custom_app_bar.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backGround,
      appBar: mainAppBar(context, title: S.of(context).contact_us),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        height: 100.h,
        width: 100.w,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(AppAssets.terms),
              const SizedBox(
                height: 30,
              ),
              CustomTextField(
                hintText: S.of(context).name,
                keybordType: TextInputType.text,
                hidden: false,
              ),
              CustomTextField(
                hintText: S.of(context).phone_number,
                keybordType: TextInputType.phone,
                hidden: false,
              ),
              CustomTextField(
                hintText: S.of(context).writ_you_msg,
                keybordType: TextInputType.text,
                maxLines: 5,
                hidden: false,
              ),
              SizedBox(height: 3.h,),
              CustomButton(text: S.of(context).send_msg),
            ],
          ),
        ),
      ),
    );
  }
}
