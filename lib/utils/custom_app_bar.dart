
import 'package:flutter/material.dart';
import 'package:tayara_driver_mobile/Utils/color_manager.dart';
import 'package:tayara_driver_mobile/core/shareWidget/custom_text.dart';

AppBar mainAppBar(context, {required String title}) {
  return AppBar(
    backgroundColor: ColorManager.backGround,
    toolbarHeight: 80,
    elevation: 0.0,
    centerTitle: true,
    automaticallyImplyLeading: true,
    title: RegularText(
      text: title,
      fontWeight: FontWeight.bold,
    ),
  );
}
