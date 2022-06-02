import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/task_list_controller.dart';

class TaskListView extends GetView<TaskListController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TaskListView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TaskListView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
