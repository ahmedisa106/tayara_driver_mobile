import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../utils/assets_manager.dart';

class AppLoader extends StatelessWidget {
  const AppLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        AppAssets.appLoader,
        width: 100,
        height: 100,
      ),
    );
  }
}
