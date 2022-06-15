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
    return MaterialApp(
      home: DefaultTabController(
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
                    : const SizedBox(
                        height: 50,
                        width: 50,
                      ),
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
            bottom: const PreferredSize(
              preferredSize: Size(9, 18),
              child: TabBar(
                // isScrollable: true,
                indicatorColor: primaryColor,
                labelColor: black,
                labelStyle: semibold12,
                tabs: [
                  Tab(text: 'Todo'),
                  Tab(text: 'Monitoring'),
                  Tab(text: 'Offline'),
                  Tab(text: 'History'),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              TodoView(),
              MonitoringView(),
              const Icon(Icons.directions_bike),
              const Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
