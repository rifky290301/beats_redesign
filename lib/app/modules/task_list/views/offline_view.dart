import 'package:flutter/material.dart';

import 'package:get/get.dart';

class OfflineView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OfflineView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OfflineView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
