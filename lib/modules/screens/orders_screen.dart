import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../Utils/color_manager.dart';
import '../../core/shareWidget/custom_text.dart';
import '../../generated/l10n.dart';
import '../../utils/assets_manager.dart';
import '../../utils/box_shadow.dart';
import '../../utils/go_to.dart';
import 'order_detail_screen.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backGround,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
        height: 100.h,
        width: 100.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            RegularText(
              text: S
                  .of(context)
                  .orders,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 2.h,
            ),
            TabBar(
                controller: _tabController,
                labelPadding: EdgeInsets.zero,
                indicatorColor: ColorManager.primaryColor,
                indicatorSize: TabBarIndicatorSize.tab,
                dividerHeight: 0,
                unselectedLabelStyle: TextStyle(
                  fontSize: 8.sp,
                ),
                labelStyle: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.bold,
                ),
                labelColor: ColorManager.primaryColor,
                unselectedLabelColor: Colors.grey,
                indicator: BoxDecoration(
                  color: ColorManager.primaryColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                tabs: [
                  Tab(
                    text: S
                        .of(context)
                        .currant_orders,
                  ),
                  Tab(
                    text: S
                        .of(context)
                        .previous_orders,
                  ),
                ]),
            Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ListView.separated(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return orderCard(context);
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 2.h,
                        );
                      },
                    ),
                    ListView.separated(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return orderCard(context);
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 2.h,
                        );
                      },
                    ),

                  ],
                )),
          ],
        ),
      ),
    );
  }

  orderCard(context) {
    return InkWell(
      onTap: (){
        GoTo.screen(const OrderDetailsScreen());

      },
      child: Container(
        padding:
        EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: AppBoxShadow.selectedBoxShadow(),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // store image
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
                      size: 12.sp,
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                          color:
                          ColorManager.red.withOpacity(0.5),
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
                )
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            const Divider(),
            SizedBox(
              height: 1.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RegularText(
                  text: S.of(context).order_details,
                  size: 10.sp,
                ),
                RegularText(
                  text: "5 items",
                  size: 10.sp,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            SizedBox(
              height: .5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RegularText(
                  text: S.of(context).total_payment,
                  size: 10.sp,
                ),
                RegularText(
                  text: "100 LE",
                  color: ColorManager.primaryColor,
                  fontWeight: FontWeight.bold,
                  size: 10.sp,
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
