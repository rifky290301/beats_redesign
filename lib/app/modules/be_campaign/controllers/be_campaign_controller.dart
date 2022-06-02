import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BeCampaignController extends GetxController {
  late TextEditingController search;

  @override
  void onInit() {
    super.onInit();
    search = TextEditingController();
  }

  @override
  void onClose() {
    search.dispose();
    super.onClose();
  }

  void searching(String search) {}

  final currentIndex = 0.obs;

  List<int> list = [1, 2, 3];

  List<String> cardList = [
    'assets/images/be_campaign/carousel1.jpg',
    'assets/images/be_campaign/carousel2.jpg',
    'assets/images/be_campaign/carousel3.jpg',
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  void changeIndex(int index) {
    currentIndex.value = index;
  }
}
