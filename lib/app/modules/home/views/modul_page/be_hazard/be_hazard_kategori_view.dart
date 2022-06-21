import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../utils/theme/colors.dart';
import '../../../../../utils/theme/fonts.dart';
import '../../../../../utils/theme/size.dart';
import '../../../../../widgets/text_field_widget.dart';
import '../data/data_tools_pengamatan_view.dart';

class BeHazardKategoriView extends GetView {
  bool isChecked = true;

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
          const SizedBox(
            height: spacingNormal * 2,
          ),
          CheckboxListTile(
            shape: const CircleBorder(),
            title: Text(
              "Apakah laporan berkaitan dengan Observasi Area Kritis?",
              style: regular12.copyWith(
                color: colorPrimaryText,
              ),
            ),
            value: isChecked,
            onChanged: (newValue) {},
            controlAffinity:
                ListTileControlAffinity.leading, //  <-- leading Checkbox
          ),
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
                  'Ketidaksesuaian',
                  style: semibold12.copyWith(
                    color: colorPrimaryText,
                  ),
                ),
                const SizedBox(
                  height: spacingNormal,
                ),
                const TextFieldWidget(
                  label: 'Pilih Ketidaksesuaian',
                ),
              ],
            ),
          ),
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
                  'Sub Ketidaksesuaian',
                  style: semibold12.copyWith(
                    color: colorPrimaryText,
                  ),
                ),
                const SizedBox(
                  height: spacingNormal,
                ),
                const TextFieldWidget(
                  label: 'Pilih Sub Ketidaksesuaian',
                ),
              ],
            ),
          ),
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
                  'Quick Action',
                  style: semibold12.copyWith(
                    color: colorPrimaryText,
                  ),
                ),
                const SizedBox(
                  height: spacingNormal,
                ),
                const TextFieldWidget(
                  label: 'Pilih Quick Action',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: spacingLarge,
          ),
          const Spacer(),
          SizedBox(
            width: context.widthQuery,
            child: Row(
              children: const [
                Icon(Icons.arrow_back_ios_rounded),
                Text('BACK '),
                Spacer(),
                Text('NEXT '),
                Icon(Icons.arrow_forward_ios_rounded),
              ],
            ),
          )
        ],
      ),
    );
  }
}
