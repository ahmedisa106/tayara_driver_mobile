import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:tayara_driver_mobile/Utils/color_manager.dart';
import 'package:tayara_driver_mobile/core/shareWidget/custom_button.dart';
import 'package:tayara_driver_mobile/utils/custom_app_bar.dart';
import 'package:tayara_driver_mobile/utils/tools.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/shareWidget/custom_text.dart';
import '../../generated/l10n.dart';
import '../../utils/assets_manager.dart';
import '../../utils/box_shadow.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backGround,
      appBar: mainAppBar(context, title: S.of(context).order_details),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        height: 100.h,
        width: 100.w,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.warning,
                    headerAnimationLoop: false,
                    animType: AnimType.scale,
                    title: S.of(context).alert,
                    desc: S.of(context).cancel_alert_msg,
                    buttonsTextStyle: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    btnOkText: S.of(context).sure,
                    btnCancelText: S.of(context).cancel,
                    btnCancelColor: ColorManager.red.withOpacity(0.7),
                    btnOkColor: ColorManager.green.withOpacity(0.7),
                    showCloseIcon: true,
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  ).show();
                },
                child: Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: RegularText(
                    text: S.of(context).order_cancel,
                    size: 10.sp,
                    color: ColorManager.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: AppBoxShadow.selectedBoxShadow(),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start ,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(7),
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: AppBoxShadow.selectedBoxShadow(),
                      ),
                      child: Image.asset(AppAssets.logo),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RegularText(
                          text: "Example store",
                          fontWeight: FontWeight.bold,
                          size: 11.sp,
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                              color: ColorManager.red.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(5)),
                          child: RegularText(
                            text: "جاري التوصيل",
                            size: 9.sp,
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          children: [
                            RegularText(
                              text: "#123456",
                              size: 10.sp,
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            RegularText(
                              text: "15/3/2024",
                              size: 10.sp,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              RegularText(
                text: S.of(context).store_data,
                size: 12.sp,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 1.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: AppBoxShadow.selectedBoxShadow(),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(AppAssets.location),
                    const SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RegularText(
                          text: S.of(context).address,
                          size: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        RegularText(
                          text: "4 شارع قصر فهمي - المطريه",
                          size: 10.sp,
                        ),
                        SizedBox(height: 1.h,),
                        InkWell(
                          onTap: (){
                            MapsLauncher.launchCoordinates(30.12731214760335, 31.316183285897868);
                          },
                          child: RegularText(
                            text: S.of(context).go_to_store,
                            color: ColorManager.primaryColor,
                            size: 10.sp,
                          ),
                        ),
          
                      ],
                    )
          
                  ],
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: AppBoxShadow.selectedBoxShadow(),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(AppAssets.call),
                    const SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RegularText(
                          text: S.of(context).phone_number,
                          size: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        RegularText(
                          text: "01141383800",
                          size: 10.sp,
                        ),
                        SizedBox(height: 1.h,),
                        InkWell(
                          onTap: (){
                            var url = Uri(
                              scheme: 'tel',
                              path: "01141383800",
                            );
                            launchUrl(
                              url,
                            );
                          },
                          child: RegularText(
                            text: S.of(context).call_store,
                            color: ColorManager.primaryColor,
                            size: 10.sp,
                          ),
                        ),
          
                      ],
                    )
          
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              RegularText(
                text: S.of(context).client_data,
                size: 12.sp,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 1.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: AppBoxShadow.selectedBoxShadow(),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(AppAssets.user),
                    const SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RegularText(
                          text: "Ahmed issa",
                          size: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        RegularText(
                          text: "01141383800",
                          size: 10.sp,
                        ),
                        SizedBox(height: 1.h,),
                        InkWell(
                          onTap: (){
                            var url = Uri(
                              scheme: 'tel',
                              path: "01141383800",
                            );
                            launchUrl(
                              url,
                            );
                          },
                          child: RegularText(
                            text: S.of(context).call_store,
                            color: ColorManager.primaryColor,
                            size: 10.sp,
                          ),
                        ),
          
                      ],
                    )
          
                  ],
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              CustomButton(
                onTap: (){
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.warning,
                    headerAnimationLoop: false,
                    animType: AnimType.scale,
                    title: S.of(context).alert,
                    desc: S.of(context).complete_alert_msg,
                    buttonsTextStyle: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    btnOkText: S.of(context).sure,
                    btnCancelText: S.of(context).cancel,
                    btnCancelColor: ColorManager.red.withOpacity(0.7),
                    btnOkColor: ColorManager.green.withOpacity(0.7),
                    showCloseIcon: true,
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  ).show();
                },
                  text: S.of(context).make_order_complete),
              SizedBox(
                height: 1.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: AppBoxShadow.selectedBoxShadow(),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(AppAssets.location),
                    const SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RegularText(
                          text: S.of(context).address,
                          size: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        RegularText(
                          text: "4 شارع قصر فهمي - المطريه",
                          size: 10.sp,
                        ),
                        SizedBox(height: 1.h,),
                        InkWell(
                          onTap: (){
                            MapsLauncher.launchCoordinates(30.12731214760335, 31.316183285897868);
                          },
                          child: RegularText(
                            text: S.of(context).go_to_store,
                            color: ColorManager.primaryColor,
                            size: 10.sp,
                          ),
                        ),

                      ],
                    )

                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
