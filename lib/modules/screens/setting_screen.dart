import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tayara_driver_mobile/Utils/color_manager.dart';
import 'package:tayara_driver_mobile/modules/screens/components/setting_item.dart';
import 'package:tayara_driver_mobile/modules/screens/edit_profile_screen.dart';
import 'package:tayara_driver_mobile/modules/screens/info_screens/contact_us_screen.dart';
import 'package:tayara_driver_mobile/modules/screens/info_screens/privacy_screen.dart';
import 'package:tayara_driver_mobile/modules/screens/info_screens/terms_screen.dart';
import 'package:tayara_driver_mobile/modules/screens/info_screens/who_we_are_screen.dart';
import 'package:tayara_driver_mobile/modules/screens/login_screen.dart';
import 'package:tayara_driver_mobile/utils/go_to.dart';

import '../../core/shareWidget/custom_text.dart';
import '../../generated/l10n.dart';
import '../../utils/assets_manager.dart';
import '../../utils/box_shadow.dart';
import 'components/language_toggle.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backGround,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
        height: 100.h,
        width: 100.w,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: RegularText(
                  text: S.of(context).more,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: ColorManager.primaryColor,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: AppBoxShadow.selectedBoxShadow(),
                ),
                child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: Image.asset(AppAssets.logo)),
              ),
              SizedBox(
                height: 2.h,
              ),
              const RegularText(
                text: "Mohamed Talaat",
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 1.h,
              ),
              RegularText(
                text: "01141383800",
                size: 12.sp,
              ),
              SizedBox(
                height: 2.h,
              ),
              SettingItem(
                title: S.of(context).edit_profile,
                icon: AppAssets.userEdit,
                onTap: () {
                  GoTo.screen(const EditProfileScreen());
                },
              ),
              SettingItem(
                title: S.of(context).change_password,
                icon: AppAssets.lock,
                onTap: () {},
              ),
              SettingItem(
                title: S.of(context).language,
                icon: AppAssets.global,
                lang: Container(
                  alignment: Alignment.topCenter,
                  height: 30,
                  width: 100,
                  child: const LanguageToggle(),
                ),
              ),
              SettingItem(
                title: S.of(context).logout,
                icon: AppAssets.logout,
                onTap: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.warning,
                    headerAnimationLoop: false,
                    animType: AnimType.scale,
                    title: S.of(context).alert,
                    desc: S.of(context).logout_msg,
                    buttonsTextStyle: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    btnOkText: S.of(context).logout,
                    btnCancelText: S.of(context).cancel,
                    btnCancelColor: ColorManager.red.withOpacity(0.7),
                    btnOkColor: ColorManager.green.withOpacity(0.7),
                    showCloseIcon: true,
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {
                      GoTo.screenAndRemoveUntil(const LoginScreen());
                    },
                  ).show();
                },
              ),
              SettingItem(
                title: S.of(context).contact_us,
                icon: AppAssets.messages,
                onTap: () {
                  GoTo.screen(const ContactUsScreen());
                },
              ),
              SettingItem(
                title: S.of(context).who_we_are,
                icon: AppAssets.info,
                onTap: () {
                  GoTo.screen(const WhoWeAreScreen());

                },
              ),
              SettingItem(
                title: S.of(context).terms,
                icon: AppAssets.task,
                onTap: () {
                  GoTo.screen(const TermsScreen());
                },
              ),
              SettingItem(
                title: S.of(context).privacy_policy,
                icon: AppAssets.security,
                onTap: () {
                  GoTo.screen(const PrivacyScreen());

                },
              ),
              SettingItem(
                title: S.of(context).delete_account,
                icon: AppAssets.userDelete,
                onTap: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.warning,
                    headerAnimationLoop: false,
                    animType: AnimType.scale,
                    title: S.of(context).alert,
                    desc: S.of(context).delete_msg,
                    buttonsTextStyle: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    btnOkText: S.of(context).delete_account,
                    btnCancelText: S.of(context).cancel,
                    btnCancelColor: ColorManager.red.withOpacity(0.7),
                    btnOkColor: ColorManager.green.withOpacity(0.7),
                    showCloseIcon: true,
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  ).show();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
