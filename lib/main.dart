import 'package:bottomnavs/app/modules/getx/home/getx_home_screen.dart';
// import 'package:bottomnavs/app/modules/normal/home/home_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  // IF USING GETX FLUTTER PATTERN
  runApp(GetMaterialApp(
    home: GetXHomeScreen(),
  ));

  // // IF USING NORMAL FLUTTER PATTERN
  // runApp(MaterialApp(
  //   home: HomeScreen(),
  // ));
}
