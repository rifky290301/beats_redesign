import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  late TextEditingController beatsID;
  late TextEditingController password;

  @override
  void onInit() {
    super.onInit();
    beatsID = TextEditingController();
    password = TextEditingController();
  }

  @override
  void onClose() {
    beatsID.dispose();
    password.dispose();
    super.onClose();
  }

  void login(String beatsID, String password) {}

  // final double _width = MediaQuery.of(this).size.width * 0.7;
  // final double _height = 50;
}
