/*
        ---------------------------------------
        Project: Bat and Brain Game Mobile Application
        Date: April 4, 2024
        Author: Ameer from Pakistan
        ---------------------------------------
        Description:  Custom App Bar
      */
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../utils/values/my_color.dart';
import '../../utils/values/style.dart' show kSize14DarkW400Text;

class CustomAppBar extends StatelessWidget {
  final String title;
  final bool showBackButton;
  final bool settingButton;

  const CustomAppBar({
    super.key,
    this.title = "",
    this.showBackButton = true,
    this.settingButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        showBackButton
            ? GestureDetector(
          onTap: (){
            Get.back();
          },
          child: BackButton()
        )
            : SizedBox(width: 72.w, height: 72.h),
        Text(
          title,
          style: kSize14DarkW400Text.copyWith(
              fontSize: 80,
              color: MyColors.textColor
          ),
        ),
        settingButton?
        GestureDetector(
          onTap: (){
            //Get.to(() => SettingsScreen(),);
          },
          child: Text("data")
        ): SizedBox(width: 72.w, height: 72.h),
      ],
    );
  }
}