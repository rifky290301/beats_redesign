import 'package:flutter/material.dart';

import 'package:get/get.dart';

class PeringkatView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PeringkatView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PeringkatView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
