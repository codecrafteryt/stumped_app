    /*
      ---------------------------------------
      Project: Plinkos Puzzle Game Mobile Application
      Date: March 20, 2024
      Author: Ameer from Pakistan
      ---------------------------------------
      Description: Dependency Injection
    */
     import 'package:get/get_core/src/get_main.dart';
    import 'package:get/get_instance/get_instance.dart';
    import 'package:shared_preferences/shared_preferences.dart';
import 'package:stumped_app/controller/facts_controller.dart';
import 'package:stumped_app/controller/quiz_controller.dart';
import 'package:stumped_app/controller/setting_controller.dart';

    class DependencyInjection { // controllers DI
       static void init() async {
         final sharedPreferences = await SharedPreferences.getInstance();
         Get.lazyPut(() => sharedPreferences, fenix: true);
         Get.lazyPut(() => FactsController(sharedPreferences: Get.find(),), fenix: true);
         Get.lazyPut(() => QuizController(sharedPreferences: sharedPreferences), fenix: true);
         Get.put<SettingController>(SettingController(sharedPreferences: sharedPreferences),  permanent: true);
       }
     }