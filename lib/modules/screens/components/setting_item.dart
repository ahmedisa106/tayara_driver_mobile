import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../../../Utils/color_manager.dart';
import '../../../../core/shareWidget/custom_text.dart';

class SettingItem extends StatelessWidget {
  const SettingItem({
    required this.title,
    required this.icon,
    this.onTap,
    this.lang,
    this.isDeleteAccount,
    super.key});
  final String title;
  final String icon;
  final void Function()? onTap;
  final Widget? lang;
  final bool? isDeleteAccount;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
          margin: const EdgeInsets.only(bottom: 5),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          width: 100.w,
          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              isDeleteAccount ?? false ?
                  const Icon(Icons.delete_forever_outlined, weight: 20 , color: Colors.red,) :
              SvgPicture.asset(
                icon,
                color: ColorManager.primaryColor,
                width: 20,
                height: 20,
              ),
              const SizedBox(
                width: 15,
              ),
              RegularText(
                text: title,
                size: 11.sp,
                color: isDeleteAccount ?? false ? Colors.red : null,
              ),
              const Spacer(),
              if (lang == null)
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: isDeleteAccount ?? false ? Colors.red : ColorManager.primaryColor,
                  size: 20,
                ),
              if (lang != null)
                lang!,
            ],
          ),
        ),
      ),
    );
  }
}
