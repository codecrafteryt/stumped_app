import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBackButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Color backgroundColor;
  final Color borderColor;
  final double borderWidth;
  final double size;
  final Widget? icon; // Custom icon or image widget

  const CustomBackButton({
    Key? key,
    this.onTap,
    this.backgroundColor = const Color(0xFF424242), // default grey
    this.borderColor = const Color(0xFF2E7D32),     // default green
    this.borderWidth = 2.0,
    this.size = 60,
    this.icon, // Custom icon like Image.asset('...') or Icon(...)
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () => Navigator.pop(context),
      child: Container(
        width: size.w,
        height: size.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor,
          border: Border.all(color: borderColor, width: borderWidth),
        ),
        child: Center(
          child: icon ??
              Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 24.sp,
              ),
        ),
      ),
    );
  }
}
