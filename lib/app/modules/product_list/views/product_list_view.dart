import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_x_tutorial/app/modules/product_list/components/app_color.dart';

import '../controllers/product_list_controller.dart';

class ProductListView extends GetView<ProductListController> {
  final productController = Get.put(ProductListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.red,
          title: Text('ProductListView'),
          centerTitle: true,
        ),
        body: Obx(() {
          if (productController.isLoading.value)
            return Center(
              child: CircularProgressIndicator(),
            );
          else
            return ListView.builder(
              itemCount: productController.productList.length,
              itemBuilder: (context, index) {
                return SafeArea(
                  child: Column(
                    children: [
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          Container(
                            width: 150.0,
                            height: 100.0,
                            margin: EdgeInsets.fromLTRB(16, 8, 8, 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                productController.productList[index].imageLink,
                                width: 150.0,
                                height: 100.0,
                                fit: BoxFit.fill,
                                // color: AppColor.blue,
                                // colorBlendMode: BlendMode.color,
                              ),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.only(right: 15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    productController.productList[index].name,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                  Text(
                                    productController.productList[index].brand,
                                    style: TextStyle(
                                        fontSize: 14.0, color: AppColor.blue),
                                  ),
                                  SizedBox(height: 10.0),
                                  Container(
                                    padding: EdgeInsets.only(right: 15.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          productController
                                              .productList[index].category
                                              .toString(),
                                          style: TextStyle(
                                              fontSize: 14.0, color: AppColor.red),
                                        ),
                                        Expanded(child: Container()),
                                        Text(
                                          '\$ ${productController.productList[index].price}',
                                          style: TextStyle(
                                            color: AppColor.blue,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        color: Colors.grey[200],
                        height: 2,
                      ),
                    ],
                  ),
                );
              },
            );
        }));
  }
}
