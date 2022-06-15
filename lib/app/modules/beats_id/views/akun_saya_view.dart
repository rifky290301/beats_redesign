import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/theme/colors.dart';
import '../../../utils/theme/fonts.dart';
import '../../../utils/theme/size.dart';
import '../../../widgets/badge_medium_widget.dart';
import '../../login/views/login_view.dart';

class AkunSayaView extends GetView {
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
          Container(
            padding: const EdgeInsets.only(left: spacingLarge),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Akun',
                  style: medium20.copyWith(color: colorSecondaryText5),
                ),
                Text(
                  'Saya',
                  style: semibold24.copyWith(color: colorSecondaryText5),
                ),
              ],
            ),
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
                spacingLarge,
                spacingNormal * 2,
                spacingLarge,
                0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        width: context.widthQuery,
                        // height: 200,
                        decoration: BoxDecoration(
                          color: white,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 22,
                              color: Color(0x1A000000),
                              offset: Offset(0, 4),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                'assets/images/beats_point/profile.png',
                                width: 100,
                                height: 100,
                                // fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: spacingNormal),
                            Text(
                              'RIGGINA ADRIANI OCEANIA',
                              style: semibold14.copyWith(
                                color: colorPrimaryText,
                              ),
                            ),
                            Text(
                              'Crew',
                              style: medium14.copyWith(color: primaryColor),
                            ),
                            const SizedBox(height: spacingLarge)
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: spacingNormal),
                  Text(
                    'Perusahaan',
                    style: regular12.copyWith(color: colorSecondaryText2),
                  ),
                  const SizedBox(height: spacingSmall),
                  Text(
                    'Yayasan Dharma Bakti Berau Coal',
                    style: semibold14.copyWith(color: primaryColor),
                  ),
                  const SizedBox(height: spacingNormal),
                  Text(
                    'Jabatan Struktural',
                    style: regular12.copyWith(color: colorSecondaryText2),
                  ),
                  const SizedBox(height: spacingSmall),
                  Text(
                    'Magang',
                    style: semibold14.copyWith(color: primaryColor),
                  ),
                  const SizedBox(height: spacingNormal),
                  Text(
                    'Jabatan Fungsional',
                    style: regular12.copyWith(color: colorSecondaryText2),
                  ),
                  const SizedBox(height: spacingSmall),
                  Text(
                    'Crew',
                    style: semibold14.copyWith(color: primaryColor),
                  ),
                  const SizedBox(height: spacingNormal),
                  Text(
                    'Site',
                    style: regular12.copyWith(color: colorSecondaryText2),
                  ),
                  const SizedBox(height: spacingSmall),
                  Text(
                    'Crew',
                    style: semibold14.copyWith(color: primaryColor),
                  ),
                  const SizedBox(height: spacingSmall),
                  const BadgeMediumkWidget(
                    hexacodebg: primaryColor,
                    hexacodetext: colorSecondaryText5,
                    text: 'HO',
                  ),
                  const SizedBox(height: spacingNormal),
                  Wrap(
                    spacing: 12,
                    runSpacing: 8,
                    children: [
                      Text(
                        'BMO 1',
                        style: semibold14.copyWith(color: primaryColor),
                      ),
                      Text(
                        'BMO 2',
                        style: semibold14.copyWith(color: primaryColor),
                      ),
                      Text(
                        'SMO',
                        style: semibold14.copyWith(color: primaryColor),
                      ),
                      Text(
                        'MARINE',
                        style: semibold14.copyWith(color: primaryColor),
                      ),
                      Text(
                        'EKSPLORASI',
                        style: semibold14.copyWith(color: primaryColor),
                      ),
                      Text(
                        'LMO',
                        style: semibold14.copyWith(color: primaryColor),
                      ),
                      Text(
                        'GMO',
                        style: semibold14.copyWith(color: primaryColor),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Get.defaultDialog(
                            title: "Keluar?",
                            titleStyle: semibold14.copyWith(
                              color: colorSecondaryText4,
                            ),
                            content: const ModalLogout(),
                          );
                        },
                        child: Row(
                          children: [
                            const Icon(
                              Icons.logout_rounded,
                              color: primaryColor,
                            ),
                            const SizedBox(width: spacingSmall),
                            Text(
                              'Keluar',
                              style: semibold12.copyWith(color: primaryColor),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: spacingNormal)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ModalLogout extends StatelessWidget {
  const ModalLogout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(spacingLarge),
      child: Column(
        children: [
          // Text(
          //   'Keluar?',
          //   style: semibold14.copyWith(color: colorSecondaryText4),
          // ),
          // const SizedBox(height: spacingLarge),
          Text(
            'Apakah Anda yakin ingin keluar',
            style: regular12.copyWith(
              color: colorSecondaryText4,
            ),
          ),
          const SizedBox(height: spacingNormal),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                primaryColor,
              ),
              textStyle: MaterialStateProperty.all<TextStyle>(
                medium14.copyWith(
                  color: colorSecondary1,
                ),
              ),
              minimumSize: MaterialStateProperty.all<Size>(
                Size(
                  context.widthQuery * 0.5,
                  50,
                ),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            onPressed: () {
              Get.back();
            },
            child: Text(
              "Batal",
              style: semibold14.copyWith(
                color: colorSecondaryText5,
              ),
            ),
          ),
          const SizedBox(height: spacingLarge),
          InkWell(
            onTap: () {
              Get.offAll(LoginView());
            },
            child: Text(
              'OKE',
              style: semibold12.copyWith(color: primaryColor),
            ),
          )
        ],
      ),
    );
  }
}
