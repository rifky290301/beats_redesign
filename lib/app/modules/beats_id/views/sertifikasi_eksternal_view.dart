import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SertifikasiEksternalView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SertifikasiEksternalView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SertifikasiEksternalView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
