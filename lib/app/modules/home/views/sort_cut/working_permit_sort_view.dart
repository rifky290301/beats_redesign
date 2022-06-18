import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../utils/theme/colors.dart';
import '../../../../utils/theme/fonts.dart';
import '../../../../utils/theme/size.dart';
import '../../../../widgets/back_button_widget.dart';
import '../../../../widgets/badge_medium_widget.dart';

class WorkingPermitSortView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(paddingLarge),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: paddingLarge,
            ),
            const ButtonBackWidget(
              hexacode: primaryColor,
            ),
            const SizedBox(
              height: paddingLarge,
            ),
            Text(
              'Status Work Permit',
              style: semibold24.copyWith(color: primaryColor),
            ),
            const SizedBox(
              height: paddingLarge,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    'assets/images/home/shortcut_icon/lokasi3x.png',
                  ),
                ),
                const SizedBox(
                  width: spacingNormal,
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Status Lokasi Penugasan',
                        style: medium14.copyWith(
                          color: colorPrimaryText,
                        ),
                      ),
                      const SizedBox(
                        height: paddingSmall,
                      ),
                      const BadgeMediumWidget(
                        text: 'PASSED',
                        hexacodebg: primaryColor,
                        hexacodetext: colorSecondaryText5,
                      ),
                      const SizedBox(
                        height: paddingSmall,
                      ),
                      Text(
                        'Memiliki lokasi penugasan yang statusnya aktif',
                        style: semibold14.copyWith(
                          color: colorPrimaryText,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: paddingLarge,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    'assets/images/home/shortcut_icon/lokasi_23x.png',
                    width: 50,
                  ),
                ),
                const SizedBox(
                  width: spacingNormal,
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'BeRecord',
                        style: medium14.copyWith(
                          color: colorPrimaryText,
                        ),
                      ),
                      const SizedBox(
                        height: paddingSmall,
                      ),
                      const BadgeMediumWidget(
                        text: 'PASSED',
                        hexacodebg: primaryColor,
                        hexacodetext: colorSecondaryText5,
                      ),
                      const SizedBox(
                        height: paddingSmall,
                      ),
                      Text(
                        'Karyawan tidak memiliki pelanggaran',
                        style: semibold14.copyWith(
                          color: colorPrimaryText,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: paddingLarge,
            ),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    'assets/images/home/shortcut_icon/lokasi_33x.png',
                  ),
                ),
                const SizedBox(
                  width: spacingNormal,
                ),
                Expanded(
                  flex: 4,
                  child: Text(
                    'Data Dokumen yang Bermasalah',
                    style: medium14.copyWith(
                      color: colorPrimaryText,
                    ),
                  ),
                ),
              ],
            ),
            Card(
              color: colorSecondaryText5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(paddingNormal),
              ),
              child: Padding(
                padding: const EdgeInsets.all(paddingNormal),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'SID CARD - KARYAWAN',
                      style: semibold14.copyWith(
                        color: colorPrimaryText,
                      ),
                    ),
                    const SizedBox(
                      height: spacingSmall,
                    ),
                    Text(
                      'NonAktif',
                      style: semibold12.copyWith(color: red),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color: colorSecondaryText5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(paddingNormal),
              ),
              child: Padding(
                padding: const EdgeInsets.all(paddingNormal),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'SID CARD - KARYAWAN',
                      style: semibold14.copyWith(
                        color: colorPrimaryText,
                      ),
                    ),
                    const SizedBox(
                      height: spacingSmall,
                    ),
                    Text(
                      'NonAktif',
                      style: semibold12.copyWith(color: red),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color: colorSecondaryText5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(paddingNormal),
              ),
              child: Padding(
                padding: const EdgeInsets.all(paddingNormal),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'SID CARD - KARYAWAN',
                      style: semibold14.copyWith(
                        color: colorPrimaryText,
                      ),
                    ),
                    const SizedBox(
                      height: spacingSmall,
                    ),
                    Text(
                      'NonAktif',
                      style: semibold12.copyWith(color: red),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
