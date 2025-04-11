import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stumped_app/utils/values/my_color.dart';
import 'package:stumped_app/utils/values/style.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color borderColor;
  final double borderRadius;
  final double borderOpacity;
  final double height;
  final double width;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.borderColor = Colors.white,
    this.borderRadius = 60.0,
    this.borderOpacity = 0.52,
    this.height = 108.0,
    this.width = 232.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,  // Custom width
        height: height,  // Custom height
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.6),
          borderRadius: BorderRadius.circular(borderRadius), // Custom border radius
          border: Border.all(
            color: borderColor.withOpacity(borderOpacity),
            width: 6.w, // Border width
          ),
        ),
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            text,
            style: kSize14DarkW400Text.copyWith(
              fontSize: 76.sp,
              color: MyColors.white
            )
          ),
        ),
      ),
    );
  }
}
