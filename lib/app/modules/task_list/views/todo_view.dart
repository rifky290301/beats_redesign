import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/card_task_list_widget.dart';

class TodoView extends GetView {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CardTaskListWidget(isChecked: isChecked),
        CardTaskListWidget(isChecked: isChecked),
        CardTaskListWidget(isChecked: isChecked),
        CardTaskListWidget(isChecked: isChecked),
      ],
    );
  }
}
