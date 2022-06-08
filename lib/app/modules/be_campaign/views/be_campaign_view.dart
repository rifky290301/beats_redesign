import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../utils/theme/colors.dart';
import '../../../utils/theme/fonts.dart';
import '../../../utils/theme/size.dart';
import '../controllers/be_campaign_controller.dart';

class BeCampaignView extends GetView<BeCampaignController> {
  // final myControllerCamp = Get.find<BeCampaignController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: context.heightQuery * 0.3,
                width: context.widthQuery,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                    spacingNormal,
                    0,
                    spacingNormal,
                    spacingNormal,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "BeCampaign",
                        style: body1,
                      ),
                      const SizedBox(
                        height: paddingLarge,
                      ),
                      const Text(
                        "Halo Kawanizen!",
                        style: body1,
                      ),
                      const SizedBox(
                        height: paddingLarge,
                      ),
                      const Text(
                        "Ada yang baru nih, udah pada tau belum? Yang jelas sih bukan sepatu",
                        style: body1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'Kebijakan K3L Baru',
                              style: TextStyle(color: primaryColor),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: white,
                              textStyle: button,
                            ),
                          ),
                          SvgPicture.asset(
                            'assets/images/be_campaign/undraw_happy.svg',
                            height: 100,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/be_campaign/header_campaign4x.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(spacingLarge),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Terbaru', style: body2),
                        Text('Lainnya..',
                            style: body2.copyWith(color: primaryColor)),
                      ],
                    ),
                    const SizedBox(
                      height: spacingNormal,
                    ),
                    GridView(
                      padding: EdgeInsets.zero,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 1,
                      ),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: primaryColor,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/be_campaign/carousel1.jpg',
                                width: context.widthQuery,
                                fit: BoxFit.fitWidth,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(paddingNormal),
                                child: Text(
                                  'Selamat Hari Lahir Pancasila',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: false,
                                  style: button.copyWith(color: white),
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: const Color(0xFFF5F5F5),
                          child: Image.asset(
                            'assets/images/be_campaign/carousel1.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 80,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: const Color(0xFFF5F5F5),
                          child: Image.asset(
                            'assets/images/be_campaign/carousel1.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 80,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: const Color(0xFFF5F5F5),
                          child: Image.asset(
                            'assets/images/be_campaign/carousel1.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 80,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: const Color(0xFFF5F5F5),
                          child: Image.asset(
                            'assets/images/be_campaign/carousel1.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 80,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: const Color(0xFFF5F5F5),
                          child: Image.asset(
                            'assets/images/be_campaign/carousel1.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 80,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
