import 'package:get/get.dart';

import '../controllers/examples_controller.dart';

class ExamplesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExamplesController>(
      () => ExamplesController(),
    );
  }
}
