import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/theme/colors.dart';
import '../../../utils/theme/fonts.dart';
import '../../../utils/theme/size.dart';
import '../controllers/beats_id_controller.dart';
import 'edit_profile_view.dart';

class BeatsIdView extends GetView<BeatsIdController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(paddingLarge),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 100,
              height: 30,
              child: Image.asset(
                'assets/images/login/logo_beats_login_page.png',
                width: context.widthQuery,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: paddingLarge,
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.asset(
                    'assets/images/beats_point/profile.png',
                    width: 60,
                    height: 60,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  width: spacingNormal,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: context.widthQuery * 0.6,
                      child: Text(
                        'RIGGINA ADRIANI OCEANIA',
                        style: semibold16.copyWith(color: colorSecondaryText4),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                      ),
                    ),
                    const Text(
                      '0877-1630-1634',
                      style: medium14,
                    ),
                    const Text(
                      'rigginaadriani@gmail.com',
                      style: overline,
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  width: 42,
                  height: 42,
                  decoration: const BoxDecoration(
                    color: colorSecondaryText5,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: (() {
                      Get.to(EditProfileView());
                    }),
                    icon: const Icon(Icons.edit),
                    color: black,
                    iconSize: 24,
                  ),
                )
              ],
            ),
            const SizedBox(height: paddingNormal),
            const Divider(),
            const SizedBox(height: paddingNormal),
            Text(
              "Beats ID",
              style: semibold12.copyWith(
                color: colorPrimaryText,
              ),
            ),
            const SizedBox(height: paddingNormal),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      primary: primaryColor,
                      backgroundColor: white,
                      side: const BorderSide(color: primaryColor, width: 1),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(borderRadiusNormal),
                        ),
                      ),
                    ),
                    child: const Text('PJIKB', style: semibold16),
                    onPressed: () {
                      print('Pressed');
                    },
                  ),
                ),
                const SizedBox(width: spacingLarge),
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: primaryColor,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(borderRadiusNormal),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.qr_code_scanner),
                        SizedBox(width: spacingNormal),
                        Text("BeatsID", style: semibold16),
                      ],
                    ),
                    onPressed: () {
                      print('Pressed');
                    },
                  ),
                )
              ],
            ),
            const SizedBox(height: paddingNormal),
            const Divider(),
            const SizedBox(height: paddingNormal),
            ListTile(
              leading: Container(
                width: 42,
                height: 42,
                decoration: const BoxDecoration(
                  color: colorSecondaryText5,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.settings,
                  color: Colors.black,
                  size: 24,
                ),
              ),
              title: Text(
                'Akun Saya',
                style: semibold12.copyWith(color: colorPrimaryText),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
            const SizedBox(height: spacingNormal),
            Text(
              'Tentang Pekerjaan',
              style: semibold12.copyWith(
                color: colorPrimaryText,
              ),
            ),
            const SizedBox(height: spacingNormal),
            ListTile(
              leading: Container(
                width: 42,
                height: 42,
                decoration: const BoxDecoration(
                  color: colorSecondaryText5,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.settings,
                  color: Colors.black,
                  size: 24,
                ),
              ),
              title: Text(
                'Akun Saya',
                style: semibold12.copyWith(color: colorPrimaryText),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
