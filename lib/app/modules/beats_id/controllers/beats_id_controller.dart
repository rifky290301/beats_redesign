import 'package:get/get.dart';
import 'package:flutter/material.dart';

class BeatsIdController extends GetxController {
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
}
