import 'dart:async';

import 'package:get/get.dart';

import '../../home/views/home_view.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(
      const Duration(seconds: 3),
      () => Get.offAll(HomeView()),
    );
  }
}
