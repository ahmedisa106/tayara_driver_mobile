
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../../Utils/color_manager.dart';
import '../../utils/assets_manager.dart';

class AppNoInternet extends StatefulWidget {
  const AppNoInternet({Key? key}) : super(key: key);

  @override
  State<AppNoInternet> createState() => _AppNoInternetState();
}

class _AppNoInternetState extends State<AppNoInternet> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 50.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              AppAssets.appNoInternet,
              width: 60.w,
              height: 30.h,
            ),
            Text(
              'No Internet!',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                  color: ColorManager.primaryColor),
            )
          ],
        ),
      ),
    );
  }
}
