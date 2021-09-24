import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_x_tutorial/app/modules/student/components/students.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final student = Student();
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Home View'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'This is Home View',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                ),
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
                  'Next View',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                onPressed: () {
                  Get.toNamed('/next');
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
                  'Back to Main',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                onPressed: () {
                  // Get.back();
                  Get.back(result: 'This is from Home View');
                },
              ),
            ),
            SizedBox(height: 15.0),
            // Text(
            //   '${Get.arguments}',
            //   style: TextStyle(
            //     fontSize: 20.0,
            //     color: Colors.redAccent,
            //   ),
            // )
            Obx(
              () => Text(
                'Name is ${controller.student.name}',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
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
                  'Upper',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                onPressed: () {
                  // Get.back();
                  controller.convertToUpperCase();
                  // student.name.value = student.name.value.toUpperCase();
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
                  'Lower',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                onPressed: () {
                  // Get.back();
                  controller.convertToLowerCase();
                  // student.name.value = student.name.value.toUpperCase();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
