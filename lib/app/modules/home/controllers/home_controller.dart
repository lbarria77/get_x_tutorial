import 'package:get/get.dart';
import 'package:get_x_tutorial/app/modules/student/components/students.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final student = Student();

  void convertToUpperCase() {
    student.name.value = student.name.value.toUpperCase();
  }

  void convertToLowerCase() {
    student.name.value = student.name.value.toLowerCase();
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
