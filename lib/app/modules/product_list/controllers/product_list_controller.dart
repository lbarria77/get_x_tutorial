import 'package:get/get.dart';
import 'package:get_x_tutorial/app/data/models/product_model.dart';
import 'package:get_x_tutorial/app/data/services/api.service.dart';

class ProductListController extends GetxController {
  //TODO: Implement ProductListController

  final isLoading = true.obs;
  final productList = <ProductModel>[].obs;

  void fetchProducts() async {
    try {
      isLoading(true);
      final products = await ApiService.fetchProducts();
      if (products != null) {
        productList.value = products;
      }
    } finally {
      isLoading(false);
    }
  }

  final count = 0.obs;
  @override
  void onInit() {
    fetchProducts();
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
