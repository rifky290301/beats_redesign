import 'package:get/get.dart';

import '../controllers/beats_id_controller.dart';

class BeatsIdBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BeatsIdController>(
      () => BeatsIdController(),
    );
  }
}
