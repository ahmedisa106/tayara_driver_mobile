import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppMargin {
  static const double m8 = 8.0;
  static const double m12 = 12.0;
  static const double m14 = 14.0;
  static const double m16 = 16.0;
  static const double m18 = 18.0;
  static const double m20 = 20.0;
}

class AppPadding {
  static const double p8 = 8.0;
  static const double p12 = 12.0;
  static const double p14 = 14.0;
  static const double p16 = 16.0;
  static const double p18 = 18.0;
  static const double p20 = 20.0;
}

class AppSize {
  static const double s1_5 = 1.5;
  static const double s4 = 4.0;
  static const double s8 = 8.0;
  static const double s12 = 12.0;
  static const double s14 = 14.0;
  static const double s16 = 16.0;
  static const double s18 = 18.0;
  static const double s20 = 20.0;
  static const double s28 = 28.0;
  static const double s40 = 40.0;
  static const double s60 = 60.0;
  static const double s65 = 65.0;

  //===============spaceHeight=============================================
  static spaceHeight05(context) => SizedBox(height: .5.h);

  static spaceHeight1(context) => SizedBox(height: 1.h);

  static spaceHeight2(context) => SizedBox(height: 2.h);

  static spaceHeight3(context) => SizedBox(height: 3.h);

  static spaceHeight5(context) => SizedBox(height: 5.h);

  static spaceHeight6(context) => SizedBox(height: 6.h);

  static spaceHeight10(context) => SizedBox(height: 10.h);

  static spaceHeight12(context) => SizedBox(height: 12.h);

  //===============spaceWidth==============================================
  static spaceWidth1(context) => SizedBox(width: 1.w);

  static spaceWidth2(context) => SizedBox(width: 2.w);

  static spaceWidth3(context) => SizedBox(width: 3.w);

  static spaceWidth4(context) => SizedBox(width: 4.w);

  static spaceWidth5(context) => SizedBox(width: 5.w);

  static spaceWidth10(context) => SizedBox(width: 10.w);

  static spaceWidth15(context) => SizedBox(width: 15.w);

  static spaceWidth20(context) => SizedBox(width: 20.w);
}
