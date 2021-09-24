import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/next_controller.dart';

class NextView extends GetView<NextController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('NextView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'NextView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
