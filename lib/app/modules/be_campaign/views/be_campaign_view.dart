import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/theme/colors.dart';
import '../../../utils/theme/fonts.dart';
import '../../../utils/theme/size.dart';
import '../controllers/be_campaign_controller.dart';

class BeCampaignView extends GetView<BeCampaignController> {
  final myControllerCamp = Get.find<BeCampaignController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BeCampaign',
          style: button.copyWith(color: primaryColor),
        ),
        centerTitle: true,
        backgroundColor: colorSecondary3,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(spacingLarge),
            child: TextField(
              // controller: controller.search,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              autocorrect: false,
              decoration: InputDecoration(
                labelText: "Cari Campaign",
                hintText: "Cari Campaign...",
                border: const OutlineInputBorder(),
                hintStyle: body2.copyWith(color: colorInputText),
                suffixIcon: const Icon(Icons.search, color: primaryColor),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: primaryColor,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(
                    borderRadiusNormal,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: primaryColor,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(
                    borderRadiusNormal,
                  ),
                ),
                labelStyle: const TextStyle(
                  color: primaryColor,
                ),
              ),
            ),
          ),
          // CarouselSlider(
          //   options: CarouselOptions(height: 400.0),
          //   items: [1, 2, 3, 4, 5].map((i) {
          //     return Builder(
          //       builder: (BuildContext context) {
          //         return Container(
          //           width: MediaQuery.of(context).size.width,
          //           margin: const EdgeInsets.symmetric(horizontal: 5.0),
          //           decoration: const BoxDecoration(color: Colors.amber),
          //           child: Text(
          //             'text $i',
          //             style: const TextStyle(fontSize: 16.0),
          //           ),
          //         );
          //       },
          //     );
          //   }).toList(),
          // ),
          CarouselSlider(
            options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 4),
                autoPlayAnimationDuration: const Duration(milliseconds: 1000),
                autoPlayCurve: Curves.fastOutSlowIn,
                pauseAutoPlayOnTouch: true,
                enlargeCenterPage: true,
                viewportFraction: 0.8,
                onPageChanged: (index, reason) {
                  myControllerCamp.changeIndex(1);
                }),
            items: myControllerCamp.cardList.map((item) {
              return SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Center(
                  child: Image.asset(item),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
