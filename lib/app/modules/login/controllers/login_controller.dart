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
}
