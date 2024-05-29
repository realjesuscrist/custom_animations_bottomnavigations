import 'package:bottomnavs/app/public/label_bototmnavigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/home_controller.dart';

class GetXHomeScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      bottomNavigationBar: GetBuilder(
          id: "home",
          init: HomeController(),
          builder: (controller) {
            return LabelBottomNavigationBar(
              items: [
                LabelBottomNavigationItem(label: "test1", icon: Icons.home),
                LabelBottomNavigationItem(label: "test2", icon: Icons.textsms_sharp),
                LabelBottomNavigationItem(label: "test3", icon: Icons.car_crash),
                LabelBottomNavigationItem(label: "test4", icon: Icons.local_activity),
              ],
              index: controller.pageIndex.value,
              onChange: controller.changePage,
            );
          }),
    );
  }
}
