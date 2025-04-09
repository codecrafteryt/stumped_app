  import 'package:flutter/material.dart';
  import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stumped_app/utils/values/my_color.dart';
import 'package:stumped_app/utils/values/style.dart';
import 'package:stumped_app/utils/values/style.dart';

  class BalancePointWidget extends StatelessWidget {
    final String balance;
    final Color balanceTextColor;
    final Color containerColor;
    final Color borderColor;
    final Color labelColor;
    final Color shadowColor;
    final double fontSize;
    final FontWeight fontWeight;
    final double borderRadius;
    final double borderWidth;
    final double containerWidth;
    final double containerHeight;

    const BalancePointWidget({
      super.key,
      required this.balance,
      this.balanceTextColor = Colors.white,
      this.containerColor = const Color(0xFFCCD976),
      this.borderColor = Colors.black,
      this.labelColor = const Color(0xFFFFC966),
      this.shadowColor = const Color.fromRGBO(169, 93, 25, 1),
      this.fontSize = 20,
      this.fontWeight = FontWeight.w800,
      this.borderRadius = 15,
      this.borderWidth = 2,
      this.containerWidth = 183,
      this.containerHeight = 44,
    });

    @override
    Widget build(BuildContext context) {
      return Column(
            children: [
              Text(
                'Balance:',
                style: kSize18DarkW800Text.copyWith(
                  color: MyColors.primary,
                  shadows: [
                    Shadow(
                      offset: Offset(2.w, 2.h),
                      blurRadius: 2.r,
                      color: shadowColor,
                    ),
                  ],
                )
              ),
              Container(
                width: containerWidth.w,
                height: containerHeight.h,
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.circular(borderRadius.r),
                  border: Border.all(color: borderColor, width: borderWidth),
                ),
                child: Center(
                  child: Text(
                    balance,
                    style: TextStyle(
                      fontSize: fontSize.sp,
                      fontWeight: fontWeight,
                      color: balanceTextColor,
                    ),
                  ),
                ),
              ),
            ],
          );
    }
  }
