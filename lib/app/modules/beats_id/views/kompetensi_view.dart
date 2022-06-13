import 'package:flutter/material.dart';

import 'package:get/get.dart';

class KompetensiView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KompetensiView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'KompetensiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
