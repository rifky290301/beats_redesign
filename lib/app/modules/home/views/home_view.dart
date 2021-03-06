import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../utils/theme/colors.dart';
import '../../../utils/theme/fonts.dart';
import '../../../utils/theme/size.dart';
import '../../../widgets/bedge_small_widget.dart';
import '../../../widgets/modul_icon_widget.dart';
import '../../task_list/views/task_list_view.dart';
import '../controllers/home_controller.dart';
import 'campaign_card_home_view.dart';
import 'custom_modul_view.dart';
import 'sort_cut/help_desk1_view.dart';
import 'sort_cut/working_permit_sort_view.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: context.heightQuery * 0.35,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/home/header4x.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(
                  paddingLarge,
                  0,
                  paddingLarge,
                  0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            'assets/images/home/logo_beats_home_page.svg',
                            width: context.widthQuery,
                            height: 32,
                            fit: BoxFit.contain,
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  'assets/images/home/appbar_icon/sync3x.png',
                                  height: 20,
                                ),
                                SvgPicture.asset(
                                  'assets/images/home/appbar_icon/notif.svg',
                                  height: 20,
                                ),
                                Image.asset(
                                  'assets/images/home/appbar_icon/signal4x.png',
                                  height: 20,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: Image.asset(
                              'assets/images/beats_point/profile.png',
                              width: 60,
                              height: 60,
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(
                            width: spacingSmall,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'RIGGINA ADRIANI OCEANIA',
                                style: semibold16.copyWith(color: white),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                softWrap: false,
                              ),
                              const SizedBox(
                                height: spacingMicro * 0.5,
                              ),
                              Text(
                                'PJIKB',
                                style: semibold16.copyWith(color: white),
                              ),
                              const SizedBox(
                                height: spacingMicro * 0.5,
                              ),
                              Container(
                                padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    borderRadiusNormal,
                                  ),
                                  color: colorSecondary1,
                                ),
                                child: Text(
                                  'Crew',
                                  style: semibold12.copyWith(
                                    color: colorSecondaryText3,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: context.widthQuery,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(borderRadiusNormal),
                        color: white,
                        boxShadow: [
                          BoxShadow(
                            color: black.withOpacity(0.1),
                            blurRadius: 1,
                            offset: const Offset(0.5, 1), // Shadow position
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(paddingNormal),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Get.to(const TaskListView(
                                    backButton: true,
                                  ));
                                },
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/home/shortcut_icon/todo4x.png',
                                      height: 36,
                                    ),
                                    const SizedBox(height: spacingMicro),
                                    const Text(
                                      'ToDO',
                                      style: regular10,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: false,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/home/shortcut_icon/scan.svg',
                                    height: 36,
                                  ),
                                  const SizedBox(height: spacingMicro),
                                  const Text(
                                    'Scan QR',
                                    style: regular10,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: false,
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Get.to(WorkingPermitSortView());
                                },
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/home/shortcut_icon/workingpermit.svg',
                                      height: 36,
                                    ),
                                    const SizedBox(height: spacingMicro),
                                    const Text(
                                      'Working',
                                      style: regular10,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: false,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Get.to(HelpDesk1View());
                                },
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/home/shortcut_icon/helpdesk.svg',
                                      height: 36,
                                    ),
                                    const SizedBox(height: spacingMicro),
                                    const Text(
                                      'Helpdesk',
                                      style: regular10,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: false,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: spacingNormal,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(
                paddingLarge,
                0,
                paddingLarge,
                0,
              ),
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
                          children: [
                            const Text("Status Work Permit",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: black,
                                  fontFamily: montserrat,
                                )),
                            Text(
                              "PASSED",
                              style: bold12.copyWith(
                                color: colorSecondaryText3,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Head Office",
                          style: bold12.copyWith(
                            color: colorSecondaryText3,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(
                      0,
                      spacingNormal,
                      0,
                      spacingNormal,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const BadgeSmallkWidget(
                            hexacodebg: colorSecondaryText5,
                            hexacodetext: primaryColor,
                            text: 'Favorite',
                          ),
                          const SizedBox(width: spacingNormal),
                          InkWell(
                            onTap: () {
                              Get.to(CustomModulView());
                            },
                            child: Text(
                              'Pelaporan SAP',
                              style: semibold12.copyWith(
                                color: colorSecondaryText2,
                              ),
                            ),
                          ),
                          const SizedBox(width: spacingNormal),
                          InkWell(
                            onTap: () {
                              Get.to(CustomModulView());
                            },
                            child: Text(
                              'Izin Bekerja',
                              style: semibold12.copyWith(
                                color: colorSecondaryText2,
                              ),
                            ),
                          ),
                          const SizedBox(width: spacingNormal),
                          InkWell(
                            onTap: () {
                              Get.to(CustomModulView());
                            },
                            child: Text(
                              'Lainnya',
                              style: semibold12.copyWith(
                                color: colorSecondaryText2,
                              ),
                            ),
                          ),
                          const SizedBox(width: spacingNormal),
                          InkWell(
                            onTap: () {
                              Get.to(CustomModulView());
                            },
                            child: Text(
                              'Custom',
                              style: semibold12.copyWith(
                                color: colorSecondaryText2,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(
                paddingLarge,
                0,
                paddingLarge,
                0,
              ),
              child: GridView.count(
                crossAxisCount: 4,
                // crossAxisSpacing: 10,
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                children: const [
                  ModulIconWidget(
                    image: 'assets/images/home/modul/hazard.svg',
                    title: 'BeHazard',
                  ),
                  ModulIconWidget(
                    image: 'assets/images/home/modul/commissioning.svg',
                    title: 'BeCommission',
                  ),
                  ModulIconWidget(
                    image: 'assets/images/home/modul/inspection.svg',
                    title: 'BeInspection',
                  ),
                  ModulIconWidget(
                    image: 'assets/images/home/modul/obsareakritis.svg',
                    title: 'ObsAreaKritis',
                  ),
                  ModulIconWidget(
                    image: 'assets/images/home/modul/beevent.svg',
                    title: 'BeEvent',
                  ),
                  ModulIconWidget(
                    image: 'assets/images/home/modul/besurvey.svg',
                    title: 'BeSurvey',
                  ),
                  ModulIconWidget(
                    image: 'assets/images/home/modul/vaccine.svg',
                    title: 'BeVaccine',
                  ),
                  ModulIconWidget(
                    image: 'assets/images/home/modul/belearning.svg',
                    title: 'BeLearning',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(
                paddingLarge,
                0,
                paddingLarge,
                paddingLarge,
              ),
              child: SizedBox(
                width: context.widthQuery,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Campaign',
                      style: semibold12.copyWith(color: colorPrimaryText),
                    ),
                    const SizedBox(height: spacingMicro),
                    const Text(
                      'Perkuat kewaspadaan dan tetap semangat',
                      style: regular14,
                    ),
                    const SizedBox(height: spacingNormal),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          CampaignCardHomeView(
                            image: 'assets/images/home/gambar.png',
                            title: 'Bahaya Fatigure',
                            author: 'Riswanti Febriani',
                            views: 65,
                          ),
                          SizedBox(
                            width: spacingNormal * 2,
                          ),
                          CampaignCardHomeView(
                            image: 'assets/images/home/gambar.png',
                            title: 'Bahaya Fatigure',
                            author: 'Riswanti Febriani',
                            views: 65,
                          ),
                          SizedBox(
                            height: spacingNormal * 3,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
