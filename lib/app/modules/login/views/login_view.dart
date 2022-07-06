import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Container(
        margin: context.isPhone
            ? EdgeInsets.all(Get.width * 0.1)
            : EdgeInsets.all(Get.height * 0.1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
        ),
        child: Row(children: [
          !context.isPhone
              ? Expanded(
                  child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                        ),
                        color: Colors.pink,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Youkoso',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 70,
                                ),
                              ),
                              Text(
                                'Silahkan Masuk',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                              Text(
                                'Bersama SMK Kita Bisa',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ]),
                      )),
                )
              : const SizedBox(),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    context.isPhone
                        ? Column(
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                                Text(
                                  'Youkoso',
                                  style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 40,
                                  ),
                                ),
                                Text(
                                  'Silahkan Masuk',
                                  style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  'Bersama SMK Kita Bisa',
                                  style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 15,
                                  ),
                                ),
                              ])
                        : const SizedBox(),
                    Image.asset(
                      'assets/images/login.png',
                      height: Get.height * 0.5,
                    ),
                    FloatingActionButton.extended(
                      onPressed: () => Get.toNamed(Routes.HOME),
                      label: Text("Sign In With Google"),
                      icon: Icon(Ionicons.logo_google, color: Colors.white),
                    )
                  ]),
            ),
          )
        ]),
      ),
    );
  }
}
