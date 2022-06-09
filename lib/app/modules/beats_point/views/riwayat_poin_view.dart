import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../utils/theme/colors.dart';
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
                children: const [
                  Text("Rabu, 06 Juni 2022"),
                  Text("Daily Login Point"),
                  Text("Mendapatkan 500 poin"),
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
                      color: colorSecondaryText1,
                    ),
                    child: const Text(
                      'Klaim',
                      style: TextStyle(color: black),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            color: colorSecondaryText5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Rabu, 06 Juni 2022"),
                  Text("Daily Login Point"),
                  Text("Mendapatkan 500 poin"),
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
                      color: colorSecondaryText1,
                    ),
                    child: const Text(
                      'Klaim',
                      style: TextStyle(color: black),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            color: colorSecondaryText5,
          ),
        ],
      ),
    );
  }
}
