import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/theme/colors.dart';
import '../../../utils/theme/size.dart';
import '../controllers/task_list_controller.dart';

class TaskListView extends GetView<TaskListController> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 50,
                  width: 50,
                ),
                const Text('Task List', style: TextStyle(color: primaryColor)),
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
              preferredSize: Size(25, 25),
              child: TabBar(
                indicatorColor: primaryColor,
                labelColor: black,
                tabs: [
                  Tab(text: 'Todo'),
                  Tab(text: 'Monitoring'),
                  Tab(text: 'Offline'),
                  Tab(text: 'History'),
                ],
              ),
            ),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
