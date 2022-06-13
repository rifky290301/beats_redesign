import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BeRecordView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BeRecordView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BeRecordView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
