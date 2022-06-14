import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/theme/colors.dart';
import '../../../utils/theme/fonts.dart';
import '../../../utils/theme/size.dart';

class CardLisesnsiView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: colorSecondaryText5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(paddingNormal),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          paddingNormal,
          paddingLarge,
          paddingNormal,
          paddingLarge,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'SID CARD - KARYAWAN',
              style: semibold14.copyWith(color: primaryColor),
            ),
            const SizedBox(
              height: spacingSmall,
            ),
            Text(
              'SID CARD - KARYAWAN-92804-220324121055',
              style: semibold10.copyWith(color: colorSecondaryText2),
            ),
            const SizedBox(
              height: spacingSmall,
            ),
            Text(
              'EXPIRED 31 July 2022',
              style: semibold10.copyWith(color: red),
            ),
            const SizedBox(
              height: spacingNormal,
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      16,
                    ),
                    color: primaryColor,
                  ),
                  child: Text(
                    'AKTIF',
                    style: semibold12.copyWith(
                      color: colorSecondaryText5,
                    ),
                  ),
                ),
                const SizedBox(
                  width: spacingSmall,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      16,
                    ),
                    color: colorSecondaryText2,
                  ),
                  child: Text(
                    'SID CARD - KARYAWAN',
                    style: semibold12.copyWith(
                      color: colorSecondaryText5,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
