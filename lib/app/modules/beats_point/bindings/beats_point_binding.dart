import 'package:get/get.dart';

import '../controllers/beats_point_controller.dart';

class BeatsPointBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BeatsPointController>(
      () => BeatsPointController(),
    );
  }
}
