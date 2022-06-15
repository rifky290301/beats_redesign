import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../utils/theme/colors.dart';
import '../utils/theme/fonts.dart';
import '../utils/theme/size.dart';

class CardLisesnsiWidget extends GetView {
  final String certificate_name;
  final String certificate_id;
  final String certificate_expired;
  final String code;
  final bool certificate_activate;
  final bool download_button;

  const CardLisesnsiWidget({
    Key? key,
    required this.certificate_name,
    required this.certificate_id,
    required this.certificate_expired,
    required this.code,
    required this.certificate_activate,
    required this.download_button,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: colorSecondaryText5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(paddingNormal),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          paddingNormal,
          paddingLarge,
          paddingNormal,
          paddingLarge,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  certificate_name,
                  style: semibold14.copyWith(color: primaryColor),
                ),
                const Spacer(),
                download_button
                    ? SvgPicture.asset(
                        'assets/images/beats_id/page_inside/download_icon.svg',
                        height: 24,
                      )
                    : Container()
              ],
            ),
            const SizedBox(
              height: spacingSmall,
            ),
            Text(
              certificate_id,
              style: semibold10.copyWith(color: colorSecondaryText2),
            ),
            const SizedBox(
              height: spacingSmall,
            ),
            Text(
              certificate_expired,
              style: semibold10.copyWith(color: red),
            ),
            const SizedBox(
              height: spacingNormal,
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      16,
                    ),
                    color: certificate_activate ? primaryColor : red,
                  ),
                  child: certificate_activate
                      ? Text(
                          'AKTIF',
                          style: semibold12.copyWith(
                            color: colorSecondaryText5,
                          ),
                        )
                      : Text(
                          'NON AKTIF',
                          style: semibold12.copyWith(
                            color: colorSecondaryText5,
                          ),
                        ),
                ),
                const SizedBox(
                  width: spacingSmall,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      16,
                    ),
                    color: colorSecondaryText2,
                  ),
                  child: Text(
                    code,
                    style: semibold12.copyWith(
                      color: colorSecondaryText5,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
