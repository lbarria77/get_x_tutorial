import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../controllers/get_storage_controller.dart';

class GetStorageView extends GetView<GetStorageController> {
  final emailEditingController = TextEditingController();
  final storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Get Storage View'.tr),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                controller: emailEditingController,
              ),
            ),
            SizedBox(height: 8.0),
            Padding(
              padding: EdgeInsetsDirectional.all(
                16.0,
              ),
              child: Container(
                alignment: Alignment.center,
                width: 250.0,
                height: 40.0,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextButton(
                  child: Text(
                    'Write'.tr,
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    if (GetUtils.isEmail(emailEditingController.text)) {
                      storage.write('Email'.tr, emailEditingController.text);
                    } else {
                      Get.snackbar('Incorrect Email'.tr,
                          'Provide Email in valid Format'.tr,
                          colorText: Colors.white,
                          snackPosition: SnackPosition.BOTTOM);
                    }
                  },
                ),
              ),
            ),
            SizedBox(height: 8.0),
            TextButton(
              child: Text('Read'.tr),
              onPressed: () {
                print('The Email is ${storage.read('Email')}'.tr);
              },
            )
          ],
        ),
      ),
    );
  }
}
