import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stumped_app/controller/facts_controller.dart';
import 'package:stumped_app/utils/extensions/extentions.dart';
import 'package:stumped_app/view/widgets/custom_button.dart';
import '../widgets/custom_appbar.dart';

class Facts extends StatelessWidget {
  final FactsController controller = Get.find();

  Facts({super.key});

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CustomAppBar(
                title: 'Facts:',
              ),
              const SizedBox(height: 60),
              Image.asset(
                'assets/images/icons.png',
                width: 206.w,
                height: 220.h,
              ),
              18.sbh,
              40.sbh,
              CustomButton(
                text: "Quiz",
                onPressed: () {
                  // Navigate to Quiz screen
                },
              ),
              30.sbh,
              CustomButton(
                text: "Players",
                onPressed: () {
                  // Navigate to Players screen
                },
              ),
              30.sbh,
              CustomButton(
                text: "Facts",
                onPressed: () {
                  // Navigate to Facts screen
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
