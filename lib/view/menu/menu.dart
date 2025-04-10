import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stumped_app/controller/facts_controller.dart';
import 'package:stumped_app/utils/extensions/extentions.dart';
import 'package:stumped_app/view/widgets/custom_button.dart';
import '../facts/facts.dart';

class Menu extends StatelessWidget {
  final FactsController controller = Get.find();
  Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/blur.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 60),
              Image.asset(
                'assets/images/icons.png',
                width: 206.w,
                height: 220.h,
              ),
              18.sbh,

              GestureDetector(
                onTap: controller.toggleSound,
                child: Obx(() => Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.7),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    controller.isSoundOn.value ? Icons.volume_up : Icons.volume_off,
                    color: Colors.white,
                    size: 24,
                  ),
                )),
              ),

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
                  Get.to(() => Facts());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
