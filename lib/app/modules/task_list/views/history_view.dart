import 'package:beats_remake/app/utils/theme/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../utils/theme/colors.dart';
import '../../../utils/theme/fonts.dart';

class HistoryView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: context.heightQuery * 0.3),
      child: Center(
        child: Column(
          children: [
            SvgPicture.asset(
              'assets/images/task_list/sekop_icons.svg',
              width: 100,
            ),
            const SizedBox(height: spacingNormal),
            Text(
              'Data Tidak Ditemukan',
              style: medium14.copyWith(
                color: colorInputText,
              ),
            )
          ],
        ),
      ),
    );
  }
}
