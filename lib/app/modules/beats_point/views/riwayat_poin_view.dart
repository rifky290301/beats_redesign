import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../utils/theme/colors.dart';
import '../../../utils/theme/fonts.dart';
import '../../../utils/theme/size.dart';

class RiwayatPoinView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rabu, 06 Juni 2022",
                    style: medium12.copyWith(color: colorSecondaryText4),
                  ),
                  Text(
                    "Daily Login Point",
                    style: medium12.copyWith(color: colorSecondaryText3),
                  ),
                  Text(
                    "Mendapatkan 500 poin",
                    style: medium12.copyWith(color: colorSecondaryText4),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    'assets/images/beats_point/coin.svg',
                    height: 24,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        borderRadiusNormal,
                      ),
                      color: const Color(0xFFD9D9D9),
                    ),
                    child: Text(
                      'Klaim',
                      style: regular10.copyWith(color: colorPrimaryText),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            color: colorSecondaryText5,
          ),
          const SizedBox(
            height: spacingNormal,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rabu, 06 Juni 2022",
                    style: medium12.copyWith(color: colorSecondaryText4),
                  ),
                  Text(
                    "Daily Login Point",
                    style: medium12.copyWith(color: colorSecondaryText3),
                  ),
                  Text(
                    "Mendapatkan 500 poin",
                    style: medium12.copyWith(color: colorSecondaryText4),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    'assets/images/beats_point/coin.svg',
                    height: 24,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        borderRadiusNormal,
                      ),
                      color: const Color(0xFFD9D9D9),
                    ),
                    child: Text(
                      'Klaim',
                      style: regular10.copyWith(color: colorPrimaryText),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            color: colorSecondaryText5,
          ),
          const SizedBox(
            height: spacingNormal,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rabu, 06 Juni 2022",
                    style: medium12.copyWith(color: colorSecondaryText4),
                  ),
                  Text(
                    "Daily Login Point",
                    style: medium12.copyWith(color: colorSecondaryText3),
                  ),
                  Text(
                    "Mendapatkan 500 poin",
                    style: medium12.copyWith(color: colorSecondaryText4),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    'assets/images/beats_point/coin.svg',
                    height: 24,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        borderRadiusNormal,
                      ),
                      color: const Color(0xFFD9D9D9),
                    ),
                    child: Text(
                      'Klaim',
                      style: regular10.copyWith(color: colorPrimaryText),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            color: colorSecondaryText5,
          ),
          const SizedBox(
            height: spacingNormal,
          ),
        ],
      ),
    );
  }
}
