import 'package:flutter/material.dart';

import 'package:get/get.dart';

class DataLokasiView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataLokasiView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DataLokasiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
