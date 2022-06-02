import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/beats_id_controller.dart';

class BeatsIdView extends GetView<BeatsIdController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BeatsIdView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BeatsIdView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
