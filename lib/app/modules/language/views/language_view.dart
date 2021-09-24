import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/language_controller.dart';

class LanguageView extends GetView<LanguageController> {

  final controller = Get.put(LanguageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('LanguageView'.tr),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Hello'.tr,
              style: TextStyle(fontSize: 25.0, color: Colors.black),
            ),
            SizedBox(height: 15.0),
            Container(
              alignment: Alignment.center,
              width: 150.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: TextButton(
                child: Text(
                  'Ingles',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  controller.changeLanguage('en', 'US');
                },
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              alignment: Alignment.center,
              width: 150.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: TextButton(
                child: Text(
                  'Frances',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  controller.changeLanguage('fr', 'FR');
                },
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              alignment: Alignment.center,
              width: 150.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: TextButton(
                child: Text(
                  'Español',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  controller.changeLanguage('es', 'ES');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
