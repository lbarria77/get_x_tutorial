import 'package:get/get.dart';
import 'package:get_x_tutorial/app/data/providers/user_provider.dart';

class GetConnectController extends GetxController with StateMixin<List<dynamic>> {
  //TODO: Implement GetConnectController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    UserProvider().getUser().then((resp) => {
      change(resp, status: RxStatus.success())
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
