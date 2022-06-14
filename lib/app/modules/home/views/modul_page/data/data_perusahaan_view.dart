import 'package:flutter/material.dart';

import 'package:get/get.dart';

class DataPerusahaanView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataPerusahaanView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DataPerusahaanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
