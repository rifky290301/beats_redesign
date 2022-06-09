import 'package:flutter/material.dart';

import 'package:get/get.dart';

class EditPrfileView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EditPrfileView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'EditPrfileView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
