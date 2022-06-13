import 'package:flutter/material.dart';

import 'package:get/get.dart';

class WorkingPermitView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WorkingPermitView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'WorkingPermitView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
