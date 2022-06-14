import 'package:beats_remake/app/utils/theme/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../utils/theme/colors.dart';
import '../../../utils/theme/fonts.dart';

class WorkingPermitView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          const SizedBox(
            height: paddingLarge,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(
              spacingNormal,
              spacingNormal,
              0,
              0,
            ),
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: (() {
                Get.back();
              }),
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
              color: colorSecondary3,
              iconSize: 24,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(left: spacingLarge),
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Working',
                      style: medium20.copyWith(color: colorSecondaryText5),
                    ),
                    Text(
                      'Permit',
                      style: semibold24.copyWith(color: colorSecondaryText5),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: spacingLarge,
                  right: spacingLarge,
                ),
                alignment: Alignment.centerRight,
                child: SvgPicture.asset(
                  'assets/images/beats_id/page_inside/profile.svg',
                  height: 100,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            height: context.heightQuery * 0.75,
            width: context.widthQuery,
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  color: Color(0x3600000F),
                  offset: Offset(0, -1),
                )
              ],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                  spacingLarge, spacingNormal * 4, spacingLarge, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kategori Pekerjaan',
                    style: regular12.copyWith(color: colorSecondaryText2),
                  ),
                  const SizedBox(
                    height: spacingSmall,
                  ),
                  Text(
                    'KARYAWAN',
                    style: semibold14.copyWith(color: primaryColor),
                  ),
                  const SizedBox(
                    height: spacingNormal,
                  ),
                  Text(
                    'Jenis Tipe Pekerjaan',
                    style: regular12.copyWith(color: colorSecondaryText2),
                  ),
                  const SizedBox(
                    height: spacingSmall,
                  ),
                  Text(
                    'KARYAWAN',
                    style: semibold14.copyWith(color: primaryColor),
                  ),
                  const SizedBox(
                    height: spacingNormal,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: spacingNormal,
                  ),
                  Text(
                    'Kategori Pekerjaan',
                    style: regular12.copyWith(color: colorSecondaryText2),
                  ),
                  const SizedBox(
                    height: spacingSmall,
                  ),
                  Text(
                    'SOSIALISASI KEBIJAKAN & SOP',
                    style: semibold14.copyWith(color: primaryColor),
                  ),
                  const SizedBox(
                    height: spacingNormal,
                  ),
                  Text(
                    'Site',
                    style: regular12.copyWith(color: colorSecondaryText2),
                  ),
                  const SizedBox(
                    height: spacingSmall,
                  ),
                  Text(
                    'Course 3 - Pengawas non tambang tidak memiliki SIMPER',
                    style: semibold14.copyWith(color: primaryColor),
                  ),
                  const SizedBox(
                    height: spacingNormal,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
