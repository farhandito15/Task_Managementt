import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:task_management/app/sidebar.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[100],
        body: Row(
          children: [
            Expanded(
              flex: 2,
              child: SideBar(),
            ),
            Expanded(
              flex: 15,
              child: Container(
                color: Colors.white,
              ),
            ),
          ],
        ));
  }
}
