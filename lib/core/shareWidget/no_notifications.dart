import '../../utils/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

class AppNoNotifications extends StatelessWidget {
  const AppNoNotifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        AppAssets.appNoNotification,
        width: 100,
        height: 100,
      ),
    );
  }
}
