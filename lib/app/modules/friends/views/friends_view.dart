import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/friends_controller.dart';

class FriendsView extends GetView<FriendsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FriendsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'FriendsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
