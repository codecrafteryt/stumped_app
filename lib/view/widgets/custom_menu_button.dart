  import 'package:flutter/material.dart';
  import 'package:flutter_screenutil/flutter_screenutil.dart';
  import 'package:get/get_core/src/get_main.dart';
  import 'package:get/get_navigation/get_navigation.dart';

  class CustomMenuButton extends StatelessWidget {
    const CustomMenuButton({super.key});

    @override
    Widget build(BuildContext context) {
      return Align(
        alignment: Alignment.topLeft,
        child: GestureDetector(
          onTap: (){
            // Get.offUntil(
            //   GetPageRoute(page: () => MenuScreen()),
            //       (route) => route.settings.name == '/menu_screen',
            // );
            },
          child: Container(
            width: 80.w,
            height: 90.h,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(204, 217, 118, 1),
              borderRadius: BorderRadius.circular(15.r),
              border: Border.all(color: Colors.black, width: 2.w),
            ),
            child: Icon(Icons.menu, size: 55.sp, color: Colors.black),
          ),
        ),
      );
    }
  }
