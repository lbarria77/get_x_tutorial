import 'package:get/get.dart';

import '../controllers/get_connect_controller.dart';

class GetConnectBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetConnectController>(
      () => GetConnectController(),
    );
  }
}
