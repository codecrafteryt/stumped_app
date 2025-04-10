// home_controller.dart
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FactsController extends GetxController {
  final SharedPreferences sharedPreferences;
  FactsController({required this.sharedPreferences});

  RxBool isSoundOn = true.obs;

  void toggleSound() {
    isSoundOn.value = !isSoundOn.value;
  }
}
