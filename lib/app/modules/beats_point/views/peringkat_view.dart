import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../utils/theme/colors.dart';
import '../../../utils/theme/size.dart';

class PeringkatView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(paddingLarge),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: const Color(0xFFF5F5F5),
        boxShadow: [
          BoxShadow(
            color: black.withOpacity(0.2),
            blurRadius: 1,
            offset: const Offset(1, 1), // Shadow position
          ),
        ],
      ),
      child: Column(
        children: [
          const Text('Periode'),
          const SizedBox(
            height: spacingNormal,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                    title: "Selamat! \n Anda Mendapatkan",
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
                        const Text('+500 Point')
                      ],
                    ),
                    buttonColor: primaryColor,
                    textCancel: "OK",
                  );
                },
                child: const Text(
                  '1 Minggu',
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text(
                  '1 Bulan',
                ),
              ),
            ],
          ),
          const SizedBox(
            height: spacingNormal,
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
                SvgPicture.asset(
                  'assets/images/beats_point/mahkota.svg',
                  width: 20,
                  fit: BoxFit.contain,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(36),
                  child: Image.asset(
                    'assets/images/beats_point/profile.png',
                    height: 36,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  width: context.widthQuery * 0.4,
                  child: const Text(
                    "Head Office",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  ),
                ),
                SvgPicture.asset(
                  'assets/images/beats_point/coin.svg',
                  width: 20,
                ),
                const Text("75k"),
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
                const Text('2'),
                ClipRRect(
                  borderRadius: BorderRadius.circular(36),
                  child: Image.asset(
                    'assets/images/beats_point/profile.png',
                    height: 36,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                SizedBox(
                  width: context.widthQuery * 0.4,
                  child: const Text(
                    "Rifky Martha Hadian Firmana",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  ),
                ),
                SvgPicture.asset(
                  'assets/images/beats_point/coin.svg',
                  width: 20,
                ),
                const Text("75k"),
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
                const Text('3'),
                ClipRRect(
                  borderRadius: BorderRadius.circular(36),
                  child: Image.asset(
                    'assets/images/beats_point/profile.png',
                    height: 36,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                SizedBox(
                  width: context.widthQuery * 0.4,
                  child: const Text(
                    "Riswanti Febriani",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  ),
                ),
                SvgPicture.asset(
                  'assets/images/beats_point/coin.svg',
                  width: 20,
                ),
                const Text("700k"),
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
                const Text('3'),
                ClipRRect(
                  borderRadius: BorderRadius.circular(36),
                  child: Image.asset(
                    'assets/images/beats_point/profile.png',
                    height: 36,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                SizedBox(
                  width: context.widthQuery * 0.4,
                  child: const Text(
                    "Riswanti Febriani",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  ),
                ),
                SvgPicture.asset(
                  'assets/images/beats_point/coin.svg',
                  width: 20,
                ),
                const Text("700k"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
