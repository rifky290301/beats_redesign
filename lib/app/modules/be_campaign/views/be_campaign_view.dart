import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../data/dummy/slider.dart';
import '../../../utils/theme/colors.dart';
import '../../../utils/theme/fonts.dart';
import '../../../utils/theme/size.dart';
import '../controllers/be_campaign_controller.dart';
import '../../../widgets/campaign_card_widget.dart';

class BeCampaignView extends GetView<BeCampaignController> {
  // final myControllerCamp = Get.find<BeCampaignController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: context.heightQuery * 0.35,
              width: context.widthQuery,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/be_campaign/header_campaign4x.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  spacingNormal * 2,
                  0,
                  spacingNormal * 2,
                  spacingNormal,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          "BeCampaign",
                          style: semibold16.copyWith(
                            color: colorSecondaryText5,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Halo Kawanizen!",
                            style:
                                semibold12.copyWith(color: colorSecondaryText5),
                          ),
                          const SizedBox(
                            height: paddingNormal,
                          ),
                          Text(
                            "Ada yang baru nih, udah pada tau belum? Yang jelas sih bukan sepatu",
                            style: semibold14.copyWith(
                              color: colorSecondaryText5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'Kebijakan K3L Baru',
                              style: TextStyle(color: primaryColor),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: colorSecondaryText5,
                              textStyle: bold12,
                            ),
                          ),
                          SvgPicture.asset(
                            'assets/images/be_campaign/undraw_happy.svg',
                            height: 100,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                height: 150,
                enlargeCenterPage: true,
              ),
              items: imageSliders,
            ),
            Padding(
              padding: const EdgeInsets.all(spacingLarge),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Terbaru', style: semibold14),
                      Text(
                        'Lainnya..',
                        style: regular10.copyWith(
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: spacingNormal,
                  ),
                  GridView(
                    padding: EdgeInsets.zero,
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1,
                    ),
                    children: const [
                      CampaignCardWidget(
                        hexacode: yellow,
                        title: 'Keselamatan Bekerja di Ruang Terbatas',
                        image: 'assets/images/be_campaign/carousel1.jpg',
                        views: 90,
                      ),
                      CampaignCardWidget(
                        hexacode: Color(0xFF4CAF50),
                        title: 'Selamat Hari Lahir Pancasila 2022',
                        image: 'assets/images/be_campaign/carousel2.jpg',
                        views: 89,
                      ),
                      CampaignCardWidget(
                        hexacode: Color(0xFF4CAF50),
                        title: 'Selamat Hari Lahir Pancasila 2022',
                        image: 'assets/images/be_campaign/carousel3.jpg',
                        views: 78,
                      ),
                      CampaignCardWidget(
                        hexacode: Color(0xFF4CAF50),
                        title: 'Keselamatan Bekerja di Ruang Terbatas',
                        image: 'assets/images/be_campaign/carousel1.jpg',
                        views: 32,
                      ),
                      CampaignCardWidget(
                        hexacode: Color(0xFF4CAF50),
                        title: 'Selamat Hari Lahir Pancasila 2022',
                        image: 'assets/images/be_campaign/carousel2.jpg',
                        views: 100,
                      ),
                      CampaignCardWidget(
                        hexacode: Color(0xFF4CAF50),
                        title: 'Selamat Hari Lahir Pancasila 2022',
                        image: 'assets/images/be_campaign/carousel3.jpg',
                        views: 100,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
