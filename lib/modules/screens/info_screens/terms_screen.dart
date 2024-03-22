import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tayara_driver_mobile/Utils/color_manager.dart';
import 'package:tayara_driver_mobile/utils/assets_manager.dart';
import 'package:tayara_driver_mobile/utils/custom_app_bar.dart';

import '../../../generated/l10n.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backGround,
      appBar: mainAppBar(context, title: S.of(context).terms),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        height: 100.h,
        width: 100.w,
        child: Column(
          children: [
            Image.asset(AppAssets.terms),
          ],
        ),
      ),
    );
  }
}
