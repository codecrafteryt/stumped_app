import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final double borderRadius;
  final double borderWidth;
  final List<Color> gradientColors;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final String fontFamily;
  final bool isActive;

  const CustomGButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isActive = false,
    this.width,
    this.height,
    this.borderRadius = 45,
    this.borderWidth = 3,
    this.gradientColors = const [
      Color.fromRGBO(55, 175, 69, 1),
      Color.fromRGBO(23, 73, 29, 1),
      Color.fromRGBO(39, 124, 49, 1),
    ],
    this.textColor = const Color.fromRGBO(243, 213, 138, 1),
    this.fontSize = 60,
    this.fontWeight = FontWeight.bold,
    this.fontFamily = "Lemon",
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isActive ? onPressed : () {
        // Show a message when tapping a locked level
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Level Locked!"),
            duration: Duration(seconds: 1),
          ),
        );
      },
      child: Container(
        width: width ?? 268.w,
        height: height ?? 144.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: isActive
                ? gradientColors // Active button colors
                : [Colors.grey.shade700, Colors.grey.shade900], // Inactive button colors
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(borderRadius.r),
          border: Border.all(color: Colors.black, width: borderWidth.w),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize.sp,
            fontWeight: fontWeight,
            color: isActive ? textColor : Colors.grey.shade400, // Greyed-out text for inactive buttons
            fontFamily: fontFamily,
            shadows: [
              Shadow(
                offset: Offset(2.w, 2.h),
                blurRadius: 2.r,
                color: const Color.fromRGBO(169, 93, 25, 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
