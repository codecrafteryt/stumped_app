import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stumped_app/controller/facts_controller.dart';
import 'package:stumped_app/utils/extensions/extentions.dart';
import 'package:stumped_app/utils/values/my_color.dart';
import 'package:stumped_app/utils/values/style.dart';
import 'package:stumped_app/view/menu/menu.dart';
import 'package:stumped_app/view/widgets/custom_button.dart';

import '../widgets/custom_appbar.dart';

class Fact9Screen extends StatelessWidget {
  final FactsController controller = Get.find();
  Fact9Screen({super.key});

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
                  'assets/images/fact9.png',
                  width: 372.w,
                  height: 241.h,
                ),
                13.sbh,
                Text(
                    textAlign: TextAlign.center,
                    "Virat Kohli is the first player to win top-3 ICC awards in the same year (2018)",
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
                      "Indian skipper Virat Kohli became the first cricketer in 2018 to win all the top-3 ICC Awards in the same year, In 2018, Kohli was nominated as the ICC Cricketer of the Year, ICC ODI Player, along with ICC Test player of the year. Kohli's invincible run at the international level paved his way to such a feat in 2018.",
                      style: kSize14DarkW400Text.copyWith(
                        fontSize: 32,
                        color: MyColors.white,
                      ),
                    ),
                  ),
                ),
                20.sbh,
                CustomButton(
                  text: "Menu",
                  onPressed: () {
                    Get.off(() => Menu());
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
