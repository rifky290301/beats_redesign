import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/be_campaign_controller.dart';

class BeCampaignView extends GetView<BeCampaignController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BeCampaignView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BeCampaignView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
