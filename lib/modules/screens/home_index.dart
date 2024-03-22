
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:tayara_driver_mobile/modules/screens/home_screen.dart';
import 'package:tayara_driver_mobile/modules/screens/notifications_screen.dart';
import 'package:tayara_driver_mobile/modules/screens/orders_screen.dart';
import 'package:tayara_driver_mobile/modules/screens/setting_screen.dart';

import '../../Utils/color_manager.dart';
import '../../generated/l10n.dart';
import '../../utils/assets_manager.dart';
import '../../utils/box_shadow.dart';

class HomeIndexScreen extends StatefulWidget {
  const HomeIndexScreen({this.screenIndex = 0, super.key});

  final int screenIndex;

  @override
  State<HomeIndexScreen> createState() => _HomeIndexScreenState();
}

class _HomeIndexScreenState extends State<HomeIndexScreen> {
  int _selectedIndex = 0;
  bool isStart = true;

  @override
  void initState() {
    _selectedIndex = widget.screenIndex;
    super.initState();
  }

  List<Widget> tabs = [
    const HomeScreen(),
    const OrdersScreen(),
    Container(),
    const NotificationsScreen(),
    const SettingScreen(),
  ];

  List<BottomNavigationBarItem> _navBarsItems() => [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
              _selectedIndex == 0 ? AppAssets.homeActive : AppAssets.homeIcon),
          label: S.of(context).home,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(_selectedIndex == 1
              ? AppAssets.ordersActive
              : AppAssets.ordersIcon),
          label: S.of(context).orders,
        ),
        BottomNavigationBarItem(
          icon: InkWell(
            onTap: () {},
            child: Container(
              height: 30,
            ),
          ),
          label: isStart ? S.of(context).start : S.of(context).end,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            _selectedIndex == 3 ? AppAssets.notificationActive : AppAssets.notificationIcon,
            color: _selectedIndex == 3 ? ColorManager.primaryColor : null,
          ),
          label: S.of(context).notifications,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
              _selectedIndex == 4 ? AppAssets.moreActive : AppAssets.moreIcon),
          label: S.of(context).more,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: tabs[_selectedIndex],
      floatingActionButton: InkWell(
        onTap: () {
          AwesomeDialog(
            context: context,
            dialogType: DialogType.warning,
            headerAnimationLoop: false,
            animType: AnimType.bottomSlide,
            title: S.of(context).alert,
            desc: isStart ? S.of(context).start_alert_msg : S.of(context).end_alert_msg,
            buttonsTextStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            btnOkText: isStart ? S.of(context).start : S.of(context).end,
            btnCancelText: S.of(context).cancel,
            btnCancelColor: ColorManager.red.withOpacity(0.7),
            btnOkColor: ColorManager.green.withOpacity(0.7),
            showCloseIcon: true,
            btnCancelOnPress: () {},
            btnOkOnPress: () {
              isStart = !isStart;
              setState(() {});
            },
          ).show();
        },
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.all(15),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: isStart
                ? ColorManager.primaryColor
                : ColorManager.red,
          ),
            child: SvgPicture.asset(
                isStart ? AppAssets.playIcon : AppAssets.pauseIcon)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: 8.h,
        decoration: BoxDecoration(
          boxShadow: AppBoxShadow.containerBoxShadow(),
        ),
        child: BottomNavigationBar(
          iconSize: 30,
          selectedItemColor: ColorManager.primaryColor,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: _navBarsItems(),
          backgroundColor: ColorManager.white,
        ),
      ),
    );
  }
}
