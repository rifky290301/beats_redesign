import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../utils/theme/colors.dart';
import '../../../../../utils/theme/fonts.dart';
import '../../../../../utils/theme/size.dart';
import '../../../../../widgets/text_field_option_widget.dart';
import '../../../../../widgets/text_field_widget.dart';

class BeHazardLokasiView extends GetView {
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
          const TextFieldOptionWidget(
            label: 'Tools Pengamatan',
          ),
          const TextFieldOptionWidget(
            label: 'Perusahaan',
          ),
          const TextFieldOptionWidget(
            label: 'PIC Area',
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: spacingNormal,
              ),
              Text(
                'Site',
                style: semibold12.copyWith(
                  color: colorPrimaryText,
                ),
              ),
              const SizedBox(
                height: spacingNormal,
              ),
              const TextFieldWidget(
                label: 'Pilih Site',
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: spacingNormal,
              ),
              Text(
                'Lokasi',
                style: semibold12.copyWith(
                  color: colorPrimaryText,
                ),
              ),
              const SizedBox(
                height: spacingNormal,
              ),
              const TextFieldWidget(
                label: 'Pilih Lokasi',
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: spacingNormal,
              ),
              Text(
                'Detail Lokasi',
                style: semibold12.copyWith(
                  color: colorPrimaryText,
                ),
              ),
              const SizedBox(
                height: spacingNormal,
              ),
              const TextFieldWidget(
                label: 'Pilih Detail Lokasi',
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: spacingNormal,
              ),
              Text(
                'Keterangan Lokasi',
                style: semibold12.copyWith(
                  color: colorPrimaryText,
                ),
              ),
              const SizedBox(
                height: spacingNormal,
              ),
              const TextFieldWidget(
                label: 'Pilih Keterangan Lokasi',
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: spacingNormal,
              ),
              Text(
                'AREA PJA BC',
                style: semibold12.copyWith(
                  color: colorPrimaryText,
                ),
              ),
              const SizedBox(
                height: spacingNormal,
              ),
              const TextFieldWidget(
                label: 'Pilih AREA PJA BC',
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: spacingNormal,
              ),
              Text(
                'AREA PJA BC',
                style: semibold12.copyWith(
                  color: colorPrimaryText,
                ),
              ),
              const SizedBox(
                height: spacingNormal,
              ),
              const TextFieldWidget(
                label: 'Pilih AREA PJA BC',
              ),
            ],
          ),
          const SizedBox(
            height: spacingLarge,
          ),
          Container(
            width: context.widthQuery,
            alignment: Alignment.centerRight,
            child: Row(
              children: const [
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
