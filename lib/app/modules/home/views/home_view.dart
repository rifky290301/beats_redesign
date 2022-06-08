import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../utils/theme/colors.dart';
import '../../../utils/theme/fonts.dart';
import '../../../utils/theme/size.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: context.heightQuery * 0.35,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(
                    paddingLarge, 0, paddingLarge, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(),
                          child: SvgPicture.asset(
                            'assets/images/home/logo_beats_home_page.svg',
                            width: context.widthQuery,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          height: 32,
                          width: 106,
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
                        )
                      ],
                    ),
                    Container(
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: SvgPicture.asset(
                              'assets/images/home/helpdesk.svg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'RIGGINA ADRIANI OCEANIA',
                                style: body1,
                              ),
                              Text(
                                'PJIKB',
                                style: overline,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: spacingNormal * 3,
                    ),
                    Container(
                      width: context.widthQuery,
                      child: Padding(
                        padding: const EdgeInsets.all(paddingNormal),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              'assets/images/home/helpdesk.svg',
                              width: 60,
                              height: 60,
                            ),
                            SvgPicture.asset(
                              'assets/images/home/helpdesk.svg',
                              width: 60,
                              height: 60,
                            ),
                            SvgPicture.asset(
                              'assets/images/home/helpdesk.svg',
                              width: 60,
                              height: 60,
                            ),
                            SvgPicture.asset(
                              'assets/images/home/helpdesk.svg',
                              width: 60,
                              height: 60,
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(borderRadiusNormal),
                        color: white,
                        boxShadow: [
                          BoxShadow(
                            color: black.withOpacity(0.2),
                            blurRadius: 1,
                            offset: const Offset(1, 1), // Shadow position
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/home/header4x.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(
                  paddingLarge, 0, paddingLarge, 0),
              child: Column(
                children: [
                  Container(
                    width: context.widthQuery,
                    height: 64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(borderRadiusNormal),
                      color: colorSecondary1,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text("Status Work Permit"),
                            Text("PASSED"),
                          ],
                        ),
                        const Text("Head Office")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: paddingLarge,
                      bottom: paddingLarge,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              borderRadiusNormal,
                            ),
                            color: colorSecondary1,
                          ),
                          child: const Text(
                            'Favorite',
                            style: TextStyle(color: primaryColor),
                          ),
                        ),
                        const Text('Pelaporan SAP'),
                        const Text('Izin Bekerja'),
                        const Text('Lainnya')
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
