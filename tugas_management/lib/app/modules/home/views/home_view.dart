import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
              child: Container(
                color: Colors.pink,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        child: Image(
                          image: AssetImage('assets/icons/icon.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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
