import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../utils/theme/colors.dart';
import '../../../../../utils/theme/fonts.dart';
import '../../../../../utils/theme/size.dart';
import '../../../../../widgets/text_field_widget.dart';
import '../data/data_tools_pengamatan_view.dart';

class BeHazardTemuanView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        spacingLarge,
        spacingNormal,
        spacingLarge,
        spacingNormal,
      ),
      child: ListView(
        children: [
          InkWell(
            onTap: () {
              Get.to(DataToolsPengamatanView());
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: spacingNormal,
                ),
                Text(
                  'Deskripsi Temuan',
                  style: semibold12.copyWith(
                    color: colorPrimaryText,
                  ),
                ),
                const SizedBox(
                  height: spacingNormal,
                ),
                const TextFieldWidget(
                  label: 'Diisi dengan Keterangan Lokasi',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: spacingLarge,
          ),
          SizedBox(
            width: context.widthQuery,
            child: Row(
              children: [
                const Icon(Icons.arrow_back_ios_rounded),
                const Text('BACK '),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.fromLTRB(
                    paddingNormal,
                    paddingSmall,
                    paddingNormal,
                    paddingSmall,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      borderRadiusNormal * 2,
                    ),
                    color: primaryColor,
                  ),
                  child: Text(
                    'SUBMIT',
                    style: medium14.copyWith(
                      color: white,
                    ),
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
