import 'package:get/get.dart';

import '../controllers/be_campaign_controller.dart';

class BeCampaignBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BeCampaignController>(
      () => BeCampaignController(),
    );
  }
}
