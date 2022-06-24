import 'package:badges/badges.dart';
import 'package:beats_remake/app/modules/task_list/views/history_view.dart';
import 'package:beats_remake/app/modules/task_list/views/offline_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/theme/colors.dart';
import '../../../utils/theme/fonts.dart';
import '../../../utils/theme/size.dart';
import '../../../widgets/back_button_widget.dart';
import '../controllers/task_list_controller.dart';
import 'monitoring_view.dart';
import 'todo_view.dart';

class TaskListView extends GetView<TaskListController> {
  final bool backButton;

  const TaskListView({Key? key, required this.backButton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: colorSecondaryText5,
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              backButton
                  ? const ButtonBackWidget(
                      hexacode: primaryColor,
                    )
                  : Container(),
              Text(
                'Task List',
                style: semibold16.copyWith(color: primaryColor),
              ),
              Container(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/task_list/filter4x.png',
                      width: 20,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(width: spacingNormal),
                    Image.asset(
                      'assets/images/home/appbar_icon/signal4x.png',
                      width: 20,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
            ],
          ),
          backgroundColor: white,
          bottom: PreferredSize(
            preferredSize: const Size(9, 36),
            child: TabBar(
              indicatorColor: primaryColor,
              labelColor: black,
              labelStyle: semibold12,
              tabs: [
                Tab(
                  icon: Badge(
                    badgeColor: primaryColor,
                    shape: BadgeShape.circle,
                    borderRadius: BorderRadius.circular(5),
                    position: BadgePosition.topEnd(top: -12, end: -20),
                    padding: const EdgeInsets.all(6),
                    badgeContent: Text(
                      '2',
                      style: semibold12.copyWith(color: white),
                    ),
                    child: const Text(
                      'Todo',
                      style: semibold12,
                    ),
                  ),
                ),
                const Tab(text: 'Monitoring'),
                const Tab(text: 'Offline'),
                const Tab(text: 'History'),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            TodoView(),
            MonitoringView(),
            OfflineView(),
            HistoryView(),
          ],
        ),
      ),
    );
  }
}
