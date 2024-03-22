import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../Utils/color_manager.dart';
import '../../../generated/l10n.dart';
import '../../../utils/assets_manager.dart';
import '../../../utils/custom_app_bar.dart';

class WhoWeAreScreen extends StatelessWidget {
  const WhoWeAreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backGround,
      appBar: mainAppBar(context, title: S.of(context).who_we_are),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        height: 100.h,
        width: 100.w,
        child: Column(
          children: [
            Image.asset(AppAssets.logo),
          ],
        ),
      ),
    );
  }
}
