import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stumped_app/controller/facts_controller.dart';
import 'package:stumped_app/utils/extensions/extentions.dart';
import 'package:stumped_app/utils/values/my_color.dart';
import 'package:stumped_app/utils/values/style.dart';
import 'package:stumped_app/view/widgets/custom_button.dart';

import '../widgets/custom_appbar.dart';
import 'fact7_screen.dart';

class Fact6Screen extends StatelessWidget {
  final FactsController controller = Get.find();
  Fact6Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      body: SafeArea(
        top: true,
        bottom: false,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/blur.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CustomAppBar(
                  title: 'Facts:',
                ),
                20.sbh,
                Image.asset(
                  'assets/images/fact6.png',
                  width: 372.w,
                  height: 241.h,
                ),
                13.sbh,
                Text(
                    textAlign: TextAlign.center,
                    "Sachin Tendulkar played for Pakistan before playing for India",
                    style: kSize14DarkW400Text.copyWith(
                        fontSize: 40,
                        color: Colors.white
                    )
                ),
                10.sbh,
                Container(
                  width: 336.w,
                  height: 386.h,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 0.52),
                    border: Border.all(
                      color: const Color.fromRGBO(65, 85, 75, 1),
                      width: 6.w,
                    ),
                  ),
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      textAlign: TextAlign.center,
                      "Sachin Tendulkar, who made his India debut in 1989, had previously played for Pakistan before making his India debut. In a practice match between India and Pakistan at the Brabourne Stadium in 1987, Sachin fielded for Pakistan as a substitute fielder.",
                      style: kSize14DarkW400Text.copyWith(
                        fontSize: 32,
                        color: MyColors.white,
                      ),
                    ),
                  ),
                ),
                20.sbh,
                CustomButton(
                  text: "Next",
                  onPressed: () {
                    Get.off(() => Fact7Screen());
                  },
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
