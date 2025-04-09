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

    class DependencyInjection { // controllers DI
       static void init() async {
         final sharedPreferences = await SharedPreferences.getInstance();
         Get.lazyPut(() => sharedPreferences, fenix: true);
         //Get.lazyPut(() => LevelController(sharedPreferences: Get.find(),), fenix: true);
         //Get.put<SettingController>(SettingController(sharedPreferences: sharedPreferences),  permanent: true);
       }
     }