import 'dart:ui';

import 'package:get/get.dart';

class LanguageController extends GetxController {
  //TODO: Implement LanguageController
  void changeLanguage(var key1, var key2) {
    var locale = Locale(key1, key2);
    Get.updateLocale(locale);
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
