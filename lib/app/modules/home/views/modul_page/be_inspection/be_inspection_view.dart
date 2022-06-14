import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BeInspectionView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BeInspectionView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BeInspectionView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
