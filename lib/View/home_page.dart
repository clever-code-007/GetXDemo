import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_demo/Controller/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  HomeController homeController = Get.put(HomeController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: MaterialButton(
        onPressed: () {
          HomeController.to.apiCall();
        },
        child: Text("+"),
      ),
      body: Center(
        child: Obx(() {
          return Text(HomeController.to.homeModel.value.success.toString());
        }),
      ),
    );
  }
}
