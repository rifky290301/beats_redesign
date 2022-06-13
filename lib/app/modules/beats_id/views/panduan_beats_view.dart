import 'package:flutter/material.dart';

import 'package:get/get.dart';

class PanduanBeatsView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PanduanBeatsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PanduanBeatsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
