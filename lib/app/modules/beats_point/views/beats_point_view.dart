import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../utils/theme/colors.dart';
import '../../../utils/theme/fonts.dart';
import '../../../utils/theme/size.dart';
import '../controllers/beats_point_controller.dart';
import 'peringkat_view.dart';

class BeatsPointView extends GetView<BeatsPointController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 328,
                width: context.widthQuery,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/beats_point/headerbeatspoint4x.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: spacingNormal * 2,
                    ),
                    Text(
                      'BeatsPoint',
                      style: semibold16.copyWith(color: white),
                    ),
                    const SizedBox(
                      height: spacingNormal * 6 - 4,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.asset(
                        'assets/images/beats_point/profile.png',
                        height: 110,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(
                      height: spacingNormal,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/beats_point/coin.svg',
                          height: 20,
                        ),
                        const SizedBox(
                          width: spacingNormal,
                        ),
                        Text(
                          '5000 Pts',
                          style: semibold16.copyWith(color: white),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: spacingNormal,
                    ),
                    Container(
                      height: 32,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: white,
                        boxShadow: [
                          BoxShadow(
                            color: black.withOpacity(0.2),
                            blurRadius: 1,
                            offset: const Offset(1, 1), // Shadow position
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(
                            'assets/images/beats_point/brown_helm.svg',
                            height: 20,
                          ),
                          Text(
                            'Perunggu',
                            style: semibold12.copyWith(
                              color: const Color(0xFFB08D57),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Container(
                    //   height: 55,
                    //   width: 55,
                    //   child: const Text('Daily Point'),
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(55),
                    //     color: Colors.amber,
                    //     boxShadow: [
                    //       BoxShadow(
                    //         color: black.withOpacity(0.2),
                    //         blurRadius: 1,
                    //         offset: const Offset(1, 1), // Shadow position
                    //       ),
                    //     ],
                    //   ),
                    // )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(paddingNormal),
                child: Column(
                  children: [
                    Container(
                      height: 48,
                      width: context.widthQuery * 0.85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: const Color(0xFFF5F5F5),
                        boxShadow: [
                          BoxShadow(
                            color: black.withOpacity(0.2),
                            blurRadius: 1,
                            offset: const Offset(1, 1), // Shadow position
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Center(
                              child: Text(
                                'Riwayat Poin',
                                style: medium14.copyWith(
                                  color: primaryColor,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Container(
                                padding: const EdgeInsets.fromLTRB(
                                  paddingNormal,
                                  paddingSmall,
                                  paddingNormal,
                                  paddingSmall,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    borderRadiusNormal * 2,
                                  ),
                                  color: primaryColor,
                                ),
                                child: Text(
                                  'Peringkat',
                                  style: medium14.copyWith(
                                    color: white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                'Tentang',
                                style: medium14.copyWith(
                                  color: primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: spacingNormal,
                    ),
                    PeringkatView()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
