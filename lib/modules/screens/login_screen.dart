import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:tayara_driver_mobile/Utils/color_manager.dart';
import 'package:tayara_driver_mobile/core/shareWidget/custom_text.dart';
import 'package:tayara_driver_mobile/core/shareWidget/custom_text_field.dart';

import '../../generated/l10n.dart';
import '../../utils/assets_manager.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RegularText(
          text: S.of(context).login,
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 6.w),
        height: 100.h,
        width: 100.w,
        child: Column(
          children: [
            Image.asset(
              AppAssets.logo,
            ),
            Row(
              children: [
                RegularText(
                  text: S.of(context).hello,
                  color: ColorManager.primaryColor,
                ),
                RegularText(
                  text: S.of(context).return_back,
                ),
              ],
            ),
            RegularText(
              text: S.of(context).return_back,
            ),
            CustomTextField(
                hintText: S.of(context).phone_number,
                prefix: const Icon(Icons.phone_outlined),
                keybordType: TextInputType.phone,
                hidden: false,
            ),
          ],
        ),
      ),
    );
  }
}
