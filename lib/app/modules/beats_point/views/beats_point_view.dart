import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/beats_point_controller.dart';

class BeatsPointView extends GetView<BeatsPointController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BeatsPointView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BeatsPointView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
