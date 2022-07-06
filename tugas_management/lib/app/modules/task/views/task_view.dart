import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/task_controller.dart';

class TaskView extends GetView<TaskController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TaskView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TaskView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
