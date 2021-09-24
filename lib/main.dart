import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get_x_tutorial/app/modules/language/components/translations.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Traduction(),
      locale: Locale('es', 'ES'),
      fallbackLocale: Locale('es', 'ES'),
      debugShowCheckedModeBanner: false,
      title: "GetX Tutorial",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
