import 'package:flutter/material.dart';

import 'package:get/get.dart';

class MyProfileView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyProfileView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MyProfileView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
