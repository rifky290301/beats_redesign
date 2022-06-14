import 'package:flutter/material.dart';

import 'package:get/get.dart';

class DataSiteView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataSiteView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DataSiteView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
