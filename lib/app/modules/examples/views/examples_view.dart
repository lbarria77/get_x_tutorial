import 'package:flutter/material.dart';

import 'package:get/get.dart';


import '../controllers/examples_controller.dart';

class ExamplesView extends GetView<ExamplesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Example View'.tr),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _SnackBar(),
            _ShowDialog(),
            SizedBox(height: 8.0),
            _ButtonSheet(),
            SizedBox(height: 15.0),
            _Internationalization(),
            SizedBox(height: 15.0),
            _ProductList(),
            SizedBox(height: 15.0),
            _GetStorage(),
            SizedBox(height: 15.0),
            _GetConnect(),
            SizedBox(height: 15.0),
            _GoToHome(),
          ],
        ),
      ),
    );
  }
}

class _GetConnect extends StatelessWidget {
  const _GetConnect({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 250.0,
      height: 40.0,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextButton(
        child: Text(
          'Get Connect'.tr,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () async {
          
          Get.toNamed('/get-connect');
          
        },
      ),
    );
  }
}

class _GetStorage extends StatelessWidget {
  const _GetStorage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 250.0,
      height: 40.0,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextButton(
        child: Text(
          'Get Storage'.tr,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () async {
          
          Get.toNamed('/get-storage');
          
        },
      ),
    );
  }
}

class _ProductList extends StatelessWidget {
  const _ProductList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 250.0,
      height: 40.0,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextButton(
        child: Text(
          'Product List'.tr,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () async {
          // Get.to(
          //   HomeView(),
          //   fullscreenDialog: true,
          //   transition: Transition.zoom,
          //   // duration: Duration(milliseconds: 2000),
          //   curve: Curves.bounceInOut,
          // );
          // Get.to(() => HomeView(), arguments: 'Data from Main');
          // var data = await Get.to(() => HomeView());
          // print('The recived data is $data');
          Get.toNamed('/product-list');
          
        },
      ),
    );
  }
}

class _Internationalization extends StatelessWidget {
  const _Internationalization({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 250.0,
      height: 40.0,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextButton(
        child: Text(
          'Internazionalitation'.tr,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () async {
          // Get.to(
          //   HomeView(),
          //   fullscreenDialog: true,
          //   transition: Transition.zoom,
          //   // duration: Duration(milliseconds: 2000),
          //   curve: Curves.bounceInOut,
          // );
          // Get.to(() => HomeView(), arguments: 'Data from Main');
          // var data = await Get.to(() => HomeView());
          // print('The recived data is $data');
          Get.toNamed('/language');
          
        },
      ),
    );
  }
}

class _GoToHome extends StatelessWidget {
  const _GoToHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 250.0,
      height: 40.0,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextButton(
        child: Text(
          'Go to Home'.tr,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () async {
          // Get.to(
          //   HomeView(),
          //   fullscreenDialog: true,
          //   transition: Transition.zoom,
          //   // duration: Duration(milliseconds: 2000),
          //   curve: Curves.bounceInOut,
          // );
          // Get.to(() => HomeView(), arguments: 'Data from Main');
          // var data = await Get.to(() => HomeView());
          // print('The recived data is $data');
          Get.toNamed('/home');
          
        },
      ),
    );
  }
}

class _ButtonSheet extends StatelessWidget {
  const _ButtonSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 250.0,
      height: 40.0,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextButton(
        child: Text(
          'Button Sheet',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          Get.bottomSheet(
            Container(
              child: Wrap(
                children: [
                  ListTile(
                    leading: Icon(Icons.light_mode),
                    title: Text('Light Theme'),
                    onTap: () => {
                      Get.changeTheme(ThemeData.light()),
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.dark_mode),
                    title: Text('Dark Theme'),
                    onTap: () => {Get.changeTheme(ThemeData.dark())},
                  ),
                ],
              ),
            ),
            barrierColor: Colors.redAccent,
            backgroundColor: Colors.grey.withOpacity(0.9),
            isDismissible: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              // side: BorderSide(
              //   color: Colors.white,
              //   style: BorderStyle.solid,
              //   width: 2.0,
              // ),
            ),
            enableDrag: false,
          );
        },
      ),
    );
  }
}

class _ShowDialog extends StatelessWidget {
  const _ShowDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Container(
        alignment: Alignment.center,
        width: 250.0,
        height: 40.0,
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(10.0)),
        child: Text(
          'Show Dialog'.tr,
          style: TextStyle(color: Colors.white),
        ),
      ),
      onPressed: () {
        Get.defaultDialog(
          title: 'Dialog Title',
          titleStyle: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
          middleText: 'Message Dialog',
          middleTextStyle: TextStyle(color: Colors.red, fontSize: 16.0),
          backgroundColor: Colors.grey.withOpacity(1),
          radius: 10.0,
          content: Row(
            children: [
              CircularProgressIndicator(),
              SizedBox(width: 16.0),
              Expanded(
                child: Text('Data Loading'),
              ),
            ],
          ),
          textCancel: 'Cancel',
          cancelTextColor: Colors.red,
          textConfirm: 'Confirm',
          confirmTextColor: Colors.yellow,
          onCancel: () {},
          onConfirm: () {},
          buttonColor: Colors.black,
          cancel: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(10.0)),
              alignment: Alignment.center,
              width: 100.0,
              height: 50.0,
              child: Text(
                'Cancelar',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          confirm: Container(
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(10.0)),
            alignment: Alignment.center,
            width: 100.0,
            height: 50.0,
            child: Text(
              'Confirmar',
              style: TextStyle(color: Colors.white),
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('Cancel')),
            TextButton(
              onPressed: () {},
              child: Text('Confirm'),
            ),
          ],
          barrierDismissible: false,
        );
      },
    );
  }
}

class _SnackBar extends StatelessWidget {
  const _SnackBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Container(
        alignment: Alignment.center,
        width: 250.0,
        height: 40.0,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          'Show Snackbar'.tr,
          style: TextStyle(color: Colors.white),
        ),
      ),
      onPressed: () {
        Get.snackbar('Snackbar Title', 'Snackbar Message',
            snackPosition: SnackPosition.BOTTOM,
            // titleText: Text('Another Ttitle'),
            // messageText: Text(
            //   'Another Message',
            //   style: TextStyle(
            //     color: Colors.blueAccent,
            //   ),
            // ),
            colorText: Colors.white,
            backgroundColor: Colors.black,
            borderRadius: 30.0,
            margin: EdgeInsets.all(8.0),
            // maxWidth: 300.0,
            // animationDuration: Duration(seconds: 4),
            backgroundGradient: LinearGradient(
              colors: [
                Colors.red,
                Colors.white,
              ],
            ),
            borderColor: Colors.black,
            borderWidth: 1.0,
            // boxShadows: [
            //   BoxShadow(
            //     color: Colors.blue,
            //     offset: Offset(3.0, 5.0),
            //     spreadRadius: 20.0,
            //     blurRadius: 8.0,
            //   ),
            // ],
            isDismissible: true,
            dismissDirection: SnackDismissDirection.HORIZONTAL,
            forwardAnimationCurve: Curves.bounceInOut,
            duration: Duration(seconds: 3),
            icon: Icon(
              Icons.send,
              color: Colors.white,
            ),
            mainButton: TextButton(
              onPressed: () {},
              child: Text('Retry'),
            ), onTap: (value) {
          print('Snackbar CLicked');
        },
            overlayBlur: 3,
            overlayColor: Colors.grey.withOpacity(0.3),
            userInputForm: Form(
              child: Container(
                width: double.infinity,
                height: 400.0,
                child: Expanded(
                  child: Column(
                    children: [
                      TextFormField(),
                      TextFormField(),
                    ],
                  ),
                ),
              ),
            ));
      },
    );
  }
}
