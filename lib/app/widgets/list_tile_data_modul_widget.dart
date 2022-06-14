import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/theme/colors.dart';
import '../utils/theme/fonts.dart';
import '../utils/theme/size.dart';

class ListTileDataModulWidget extends StatelessWidget {
  final int id;
  final String title;

  const ListTileDataModulWidget({
    Key? key,
    required this.id,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        Get.back();
      }),
      child: Container(
        padding: const EdgeInsets.all(paddingNormal),
        child: Row(children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  16,
                ),
                color: primaryColor,
              ),
              child: Text(
                id.toString(),
                style: semibold12.copyWith(
                  color: colorSecondaryText5,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            width: spacingSmall * 2,
          ),
          Expanded(
            flex: 3,
            child: Text(
              title,
              style: medium12.copyWith(
                color: colorPrimaryText,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
