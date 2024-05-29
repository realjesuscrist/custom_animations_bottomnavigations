import 'package:bottomnavs/app/public/label_bototmnavigation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      bottomNavigationBar: LabelBottomNavigationBar(
        items: [
          LabelBottomNavigationItem(label: "test1", icon: Icons.home),
          LabelBottomNavigationItem(label: "test2", icon: Icons.textsms_sharp),
          LabelBottomNavigationItem(label: "test3", icon: Icons.car_crash),
          LabelBottomNavigationItem(label: "test4", icon: Icons.local_activity),
        ],
        index: pageIndex,
        onChange: (index) {
          setState(() {
            pageIndex = index;
          });
        },
      ),
    );
  }
}
