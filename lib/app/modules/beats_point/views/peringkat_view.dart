import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../utils/theme/colors.dart';
import '../../../utils/theme/fonts.dart';
import '../../../utils/theme/size.dart';

class PeringkatView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(paddingLarge),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: colorSecondaryText5,
        boxShadow: [
          BoxShadow(
            color: black.withOpacity(0.2),
            blurRadius: 1,
            offset: const Offset(1, 1), // Shadow position
          ),
        ],
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Periode', style: medium14),
          const SizedBox(height: spacingNormal),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    primary: primaryColor,
                    side: const BorderSide(color: primaryColor, width: 1),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(borderRadiusNormal),
                      ),
                    ),
                  ),
                  child: Text(
                    '1 Minggu',
                    style: medium14.copyWith(
                      color: colorSecondaryText2,
                    ),
                  ),
                  onPressed: () {
                    print('Pressed');
                  },
                ),
              ),
              const SizedBox(width: spacingLarge),
              Expanded(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    primary: primaryColor,
                    backgroundColor: primaryColor,
                    side: const BorderSide(color: primaryColor, width: 1),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(borderRadiusNormal),
                      ),
                    ),
                  ),
                  child: Text(
                    '1 Bulan',
                    style: medium14.copyWith(
                      color: white,
                    ),
                  ),
                  onPressed: () {
                    Get.defaultDialog(
                      title: "Selamat! \n Anda Mendapatkan",
                      titleStyle: semibold16.copyWith(
                        color: colorSecondaryText4,
                      ),
                      cancelTextColor: primaryColor,
                      content: Column(
                        children: [
                          SvgPicture.asset(
                            'assets/images/beats_point/dialog_point.svg',
                            width: context.widthQuery,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(
                            height: spacingNormal,
                          ),
                          Text(
                            '+500 Point',
                            style: semibold16.copyWith(
                              color: primaryColor,
                            ),
                          ),
                        ],
                      ),
                      buttonColor: primaryColor,
                      textCancel: "OK",
                    );
                  },
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: spacingNormal),
                Container(
                  width: context.widthQuery,
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      borderRadiusNormal,
                    ),
                    color: colorSecondary1,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Expanded(
                        flex: 2,
                        child: Center(
                          child: Text('1', style: medium14),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(36),
                          child: Image.asset(
                            'assets/images/beats_point/profile.png',
                            height: 36,
                            // fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                      const SizedBox(width: spacingMicro),
                      Expanded(
                        flex: 9,
                        child: SizedBox(
                          width: context.widthQuery * 0.4,
                          child: const Text(
                            "Rifky Martha Hadian Firmana",
                            style: medium14,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: SvgPicture.asset(
                          'assets/images/beats_point/coin.svg',
                          width: 20,
                        ),
                      ),
                      const Expanded(
                          flex: 2, child: Text("999k", style: medium14)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: spacingSmall,
                ),
                Container(
                  width: context.widthQuery,
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      borderRadiusNormal,
                    ),
                    color: colorSecondary1,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Expanded(
                        flex: 2,
                        child: Center(
                          child: Text('2', style: medium14),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(36),
                          child: Image.asset(
                            'assets/images/beats_point/profile.png',
                            height: 36,
                            // fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                      const SizedBox(width: spacingMicro),
                      Expanded(
                        flex: 9,
                        child: SizedBox(
                          width: context.widthQuery * 0.4,
                          child: const Text(
                            "Riswanti Febriani",
                            style: medium14,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: SvgPicture.asset(
                          'assets/images/beats_point/coin.svg',
                          width: 20,
                        ),
                      ),
                      const Expanded(
                          flex: 2, child: Text("80k", style: medium14)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: spacingSmall,
                ),
                Container(
                  width: context.widthQuery,
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      borderRadiusNormal,
                    ),
                    color: colorSecondary1,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Expanded(
                        flex: 2,
                        child: Center(
                          child: Text('3', style: medium14),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(36),
                          child: Image.asset(
                            'assets/images/beats_point/profile.png',
                            height: 36,
                            // fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                      const SizedBox(width: spacingMicro),
                      Expanded(
                        flex: 9,
                        child: SizedBox(
                          width: context.widthQuery * 0.4,
                          child: const Text(
                            "Faradilla Ardiyani",
                            style: medium14,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: SvgPicture.asset(
                          'assets/images/beats_point/coin.svg',
                          width: 20,
                        ),
                      ),
                      const Expanded(
                          flex: 2, child: Text("700k", style: medium14)),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
