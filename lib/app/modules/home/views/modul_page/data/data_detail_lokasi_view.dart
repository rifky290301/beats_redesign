import 'package:flutter/material.dart';

import 'package:get/get.dart';

class DataDetailLokasiView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DataDetailLokasiView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DataDetailLokasiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
