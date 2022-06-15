import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../utils/theme/colors.dart';
import '../../../utils/theme/fonts.dart';
import '../../../utils/theme/size.dart';

class MonitoringView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: context.heightQuery * 0.3),
      // height: context.heightQuery,
      // width: context.widthQuery,

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
