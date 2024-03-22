import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'package:tayara_driver_mobile/modules/screens/login_screen.dart';

import '../../Core/localization/app_language.dart';
import '../../Utils/color_manager.dart';
import '../../core/helper/preference/shared_prafrance_manager.dart';
import '../../core/helper/preference/shared_preference_keys.dart';
import '../../utils/assets_manager.dart';
import '../../utils/go_to.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () async {
      await getUserDataFromLocalStorage(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child:  Image.asset(
          AppAssets.logo,
        ),
      ),
    );
  }

  Future<void> getUserDataFromLocalStorage(BuildContext context) async {
    Provider.of<AppLanguage>(context, listen: false).fetchLocale();
    // var prefs = await SharedPreferences.getInstance();

    // if (prefs.containsKey(SharedPreferenceKeys.accountData)) {
    //   AppConstants.userData = userModelFromJson(await SharedPreferenceManager().getData(SharedPreferenceKeys.accountData));
    // }
    //
    // if (prefs.containsKey(SharedPreferenceKeys.city)) {
    //   AppConstants.city = City.fromJson(json.decode(await SharedPreferenceManager().getData(SharedPreferenceKeys.city)));
    // }
    //
    //  Provider.of<CartProvider>(context, listen: false).getCartItems();
    //  Provider.of<SettingProvider>(context, listen: false).getSocial();
    //  Provider.of<SettingProvider>(context, listen: false).getContacts();
    // if (prefs.getString('first_seen') == "true") {
    //   GoTo.screenAndRemoveUntil(const HomeIndex());
    // } else {
      GoTo.screenAndRemoveUntil(const LoginScreen());
    // }
  }


}
