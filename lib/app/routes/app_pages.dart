import 'package:get/get.dart';

import 'package:get_x_tutorial/app/modules/examples/bindings/examples_binding.dart';
import 'package:get_x_tutorial/app/modules/examples/views/examples_view.dart';
import 'package:get_x_tutorial/app/modules/get_connect/bindings/get_connect_binding.dart';
import 'package:get_x_tutorial/app/modules/get_connect/views/get_connect_view.dart';
import 'package:get_x_tutorial/app/modules/get_storage/bindings/get_storage_binding.dart';
import 'package:get_x_tutorial/app/modules/get_storage/views/get_storage_view.dart';
import 'package:get_x_tutorial/app/modules/home/bindings/home_binding.dart';
import 'package:get_x_tutorial/app/modules/home/views/home_view.dart';
import 'package:get_x_tutorial/app/modules/language/bindings/language_binding.dart';
import 'package:get_x_tutorial/app/modules/language/views/language_view.dart';
import 'package:get_x_tutorial/app/modules/next/bindings/next_binding.dart';
import 'package:get_x_tutorial/app/modules/next/views/next_view.dart';
import 'package:get_x_tutorial/app/modules/product_list/bindings/product_list_binding.dart';
import 'package:get_x_tutorial/app/modules/product_list/views/product_list_view.dart';
import 'package:get_x_tutorial/app/modules/student/bindings/student_binding.dart';
import 'package:get_x_tutorial/app/modules/student/views/student_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.EXAMPLES;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.EXAMPLES,
      page: () => ExamplesView(),
      binding: ExamplesBinding(),
    ),
    GetPage(
      name: _Paths.NEXT,
      page: () => NextView(),
      binding: NextBinding(),
    ),
    GetPage(
      name: _Paths.STUDENT,
      page: () => StudentView(),
      binding: StudentBinding(),
    ),
    GetPage(
      name: _Paths.LANGUAGE,
      page: () => LanguageView(),
      binding: LanguageBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_LIST,
      page: () => ProductListView(),
      binding: ProductListBinding(),
    ),
    GetPage(
      name: _Paths.GET_STORAGE,
      page: () => GetStorageView(),
      binding: GetStorageBinding(),
    ),
    GetPage(
      name: _Paths.GET_CONNECT,
      page: () => GetConnectView(),
      binding: GetConnectBinding(),
    ),
  ];
}
