import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../utils/theme/colors.dart';
import '../../../utils/theme/fonts.dart';
import '../controllers/navigation_controller.dart';
import '../../be_campaign/views/be_campaign_view.dart';
import '../../beats_id/views/beats_id_view.dart';
import '../../beats_point/views/beats_point_view.dart';
import '../../home/views/home_view.dart';
import '../../task_list/views/task_list_view.dart';

class NavigationView extends StatelessWidget {
  final TextStyle unselectedLabelStyle = caption;
  final TextStyle selectedLabelStyle = caption;

  buildBottomNavigationMenu(context, navigationController) {
    return Obx(
      () => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: 54,
          child: BottomNavigationBar(
            backgroundColor: colorSecondary3,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: navigationController.changeTabIndex,
            currentIndex: navigationController.tabIndex.value,
            unselectedItemColor: black.withOpacity(0.5),
            selectedItemColor: primaryColor,
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: navigationController.tabIndex.value == 0
                      ? SvgPicture.asset(
                          'assets/images/navigation/home_hijau.svg',
                          height: 20,
                        )
                      : SvgPicture.asset(
                          'assets/images/navigation/home_hitam.svg',
                          height: 20,
                        ),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: navigationController.tabIndex.value == 1
                      ? SvgPicture.asset(
                          'assets/images/navigation/becampaign_hijau.svg',
                          height: 20,
                        )
                      : SvgPicture.asset(
                          'assets/images/navigation/becampaign_hitam.svg',
                          height: 20,
                        ),
                ),
                label: 'BeCampaign',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: navigationController.tabIndex.value == 2
                      ? SvgPicture.asset(
                          'assets/images/navigation/tasklist_hijau.svg',
                          height: 20,
                        )
                      : SvgPicture.asset(
                          'assets/images/navigation/tasklist_hitam.svg',
                          height: 20,
                        ),
                ),
                label: 'Tasklist',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: navigationController.tabIndex.value == 3
                      ? SvgPicture.asset(
                          'assets/images/navigation/beatspoint_hijau.svg',
                          height: 20,
                        )
                      : SvgPicture.asset(
                          'assets/images/navigation/beatspoint_hitam.svg',
                          height: 20,
                        ),
                ),
                label: 'BeatsPoint',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: navigationController.tabIndex.value == 4
                      ? SvgPicture.asset(
                          'assets/images/navigation/beatsid_hijau.svg',
                          height: 20,
                        )
                      : SvgPicture.asset(
                          'assets/images/navigation/beatsid_hitam.svg',
                          height: 20,
                        ),
                ),
                label: 'BeatsID',
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final NavigationController navigationController = Get.put(
      NavigationController(),
      permanent: false,
    );
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: buildBottomNavigationMenu(
          context,
          navigationController,
        ),
        body: Obx(
          () => IndexedStack(
            index: navigationController.tabIndex.value,
            children: [
              HomeView(),
              BeCampaignView(),
              TaskListView(),
              BeatsPointView(),
              BeatsIdView()
            ],
          ),
        ),
      ),
    );
  }
}
