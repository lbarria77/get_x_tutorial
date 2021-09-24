import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/get_connect_controller.dart';

class GetConnectView extends GetView<GetConnectController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text('GetConnectView'.tr),
          centerTitle: true,
        ),
        body: controller.obx(
          (data) => ListView.builder(
            padding: EdgeInsets.all(8.0),
            itemCount: data!.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage:
                        NetworkImage(data[index]['picture']['large']),
                  ),
                  title: Text(
                    data[index]['name']['title'.tr] +
                        ' ' +
                        data[index]['name']['first'] +
                        ' ' +
                        data[index]['name']['last'],
                  ),
                  subtitle: Text(
                    data[index]['email'],
                    style: TextStyle(fontSize: 12.0),
                  ),
                  trailing: Text('Age: ' + data[index]['dob']['age'].toString()
                  ),
                ),
              );
            },
          ),
          onError: (error) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 15.0),
                Text('ERROR', style: TextStyle(fontSize: 18.0),),
              ],
            ),
          ),
        ));
  }
}
