import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../Utils/color_manager.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
       this.controller,
      required this.hintText,
      required this.hidden,
      this.autofill,
      this.suffixIcon,
      this.prefix,
      this.keybordType,
      this.validate,
      this.color,
      this.maxLines,
      this.textInputAction,
      this.onChanged,
      this.onFieldSubmitted});

  //final Function onChange;
  final TextEditingController? controller;
  final String hintText;
  final bool hidden;
  final Widget? suffixIcon;
  final Widget? prefix;
  final Iterable<String>? autofill;
  final TextInputType? keybordType;
  final String? Function(String?)? validate;
  final Color? color;
  final int? maxLines;
  final TextInputAction? textInputAction;
  final void Function(String)? onFieldSubmitted;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 1.h),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onChanged: onChanged,
        validator: validate,
        keyboardType: keybordType,
        controller: controller,
        autofillHints: autofill,
        obscureText: hidden,
        maxLines: maxLines,
        onFieldSubmitted: onFieldSubmitted,
        textInputAction: textInputAction,
        decoration: InputDecoration(
          fillColor: ColorManager.lightGrey.withOpacity(0.1),
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: color ?? Colors.transparent,
              width: 1,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: color ?? Colors.transparent,
              width: 1,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          suffixIcon: suffixIcon,
          prefixIcon: prefix,
          prefixIconColor: ColorManager.lightGrey.withOpacity(0.5),
          contentPadding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
          hintText: hintText,
          hintStyle: TextStyle(
            color: ColorManager.lightGrey.withOpacity(0.5),
            fontSize: 10.sp,
            fontWeight: FontWeight.bold,
          ),
          errorMaxLines: 1,
          errorStyle: TextStyle(
            fontSize: 9.sp,
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: color ?? ColorManager.lightGrey.withOpacity(0.5),
              width: 1,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: color ?? ColorManager.red.withOpacity(0.5),
              width: 1,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: color ?? ColorManager.red.withOpacity(0.5),
              width: 1,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: color ?? Colors.transparent,
              width: 1,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
