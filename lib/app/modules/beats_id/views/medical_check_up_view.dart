import 'package:flutter/material.dart';

import 'package:get/get.dart';

class MedicalCheckUpView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MedicalCheckUpView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MedicalCheckUpView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
