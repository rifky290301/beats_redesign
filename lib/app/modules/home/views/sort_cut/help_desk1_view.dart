import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../../utils/theme/colors.dart';
import '../../../../utils/theme/fonts.dart';
import '../../../../utils/theme/size.dart';
import '../../../../widgets/back_button_widget.dart';
import 'help_desk2_view.dart';
import 'help_desk3_view.dart';

class HelpDesk1View extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
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
                'Selamat Datang Pada Laman BeHelpdesk',
                style: semibold24.copyWith(color: colorSecondaryText2),
              ),
              const SizedBox(
                height: paddingLarge,
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Get.to(HelpDesk2View());
                      },
                      child: Container(
                        padding: const EdgeInsets.all(spacingLarge),
                        decoration: BoxDecoration(
                          color: colorSecondary1,
                          borderRadius: BorderRadius.circular(
                            borderRadiusNormal,
                          ),
                        ),
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              'assets/images/home/shortcut_icon/faq.svg',
                              height: 50,
                            ),
                            const SizedBox(
                              height: spacingNormal,
                            ),
                            Text(
                              'Frequently Ask Question',
                              style: medium14.copyWith(color: primaryColor),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: spacingNormal,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Get.to(HelpDesk3View());
                      },
                      child: Container(
                        padding: const EdgeInsets.all(spacingLarge),
                        decoration: BoxDecoration(
                          color: colorSecondary1,
                          borderRadius: BorderRadius.circular(
                            borderRadiusNormal,
                          ),
                        ),
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              'assets/images/home/shortcut_icon/hand.svg',
                              height: 50,
                            ),
                            const SizedBox(
                              height: spacingNormal,
                            ),
                            Text(
                              'Penggunaan BeHelpdesk',
                              style: medium14.copyWith(color: primaryColor),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: spacingLarge,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Bagaimana cara login aplikasi beats?',
                    style: medium14.copyWith(color: colorSecondaryText4),
                  ),
                  const Icon(Icons.keyboard_arrow_down_rounded),
                ],
              ),
              const SizedBox(
                height: spacingLarge,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mengetahui status offline dan online',
                    style: medium14.copyWith(color: colorSecondaryText4),
                  ),
                  const Icon(Icons.keyboard_arrow_down_rounded),
                ],
              ),
              const SizedBox(
                height: spacingLarge,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Perbaharui dokumen bermasalah?',
                    style: medium14.copyWith(color: colorSecondaryText4),
                  ),
                  const Icon(Icons.keyboard_arrow_down_rounded),
                ],
              ),
              const SizedBox(
                height: spacingLarge,
              ),
              const Divider(),
              const SizedBox(
                height: spacingLarge,
              ),
              Text(
                'HUBUNGI KAMI',
                style: semibold14.copyWith(
                  color: colorSecondaryText4,
                ),
              ),
              const SizedBox(
                height: spacingLarge,
              ),
              ListTile(
                title: Text(
                  'Email',
                  style: medium14.copyWith(color: colorSecondaryText4),
                ),
                subtitle: Text(
                  'Tulis pertanyaanmu sekarang',
                  style: regular10.copyWith(color: colorSecondaryText4),
                ),
                leading: SvgPicture.asset(
                  'assets/images/home/shortcut_icon/email.svg',
                  height: 50,
                ),
              ),
              const SizedBox(
                height: spacingNormal,
              ),
              ListTile(
                title: Text(
                  'Telepon',
                  style: medium14.copyWith(
                    color: colorSecondaryText4,
                  ),
                ),
                subtitle: Text(
                  '0812345678910',
                  style: regular10.copyWith(
                    color: colorSecondaryText4,
                  ),
                ),
                leading: SvgPicture.asset(
                  'assets/images/home/shortcut_icon/telepon.svg',
                  height: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
