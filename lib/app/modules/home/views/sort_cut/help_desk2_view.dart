import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../../utils/theme/colors.dart';
import '../../../../utils/theme/fonts.dart';
import '../../../../utils/theme/size.dart';
import '../../../../widgets/back_button_widget.dart';

class HelpDesk2View extends GetView {
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
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Frequently Ask Question',
                      style: semibold24.copyWith(color: primaryColor),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: SvgPicture.asset(
                      'assets/images/home/shortcut_icon/ilustrasi_faq.svg',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: paddingLarge,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mengapa sulit untuk login beats?',
                    style: medium14.copyWith(color: colorSecondaryText4),
                  ),
                  const Icon(Icons.keyboard_arrow_down_rounded),
                ],
              ),
              const SizedBox(
                height: spacingNormal * 2,
              ),
              const Divider(),
              const SizedBox(
                height: spacingNormal * 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mengapa sulit untuk login beats?',
                    style: medium14.copyWith(color: colorSecondaryText4),
                  ),
                  const Icon(Icons.keyboard_arrow_down_rounded),
                ],
              ),
              const SizedBox(
                height: spacingNormal * 2,
              ),
              const Divider(),
              const SizedBox(
                height: spacingNormal * 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
