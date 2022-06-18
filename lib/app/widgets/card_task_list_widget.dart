import 'package:flutter/material.dart';

import '../utils/theme/colors.dart';
import '../utils/theme/fonts.dart';
import '../utils/theme/size.dart';

class CardTaskListWidget extends StatelessWidget {
  const CardTaskListWidget({
    Key? key,
    required this.isChecked,
  }) : super(key: key);

  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(
        spacingNormal * 2,
        spacingNormal,
        spacingNormal * 2,
        0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '4 bulan yang lalu',
                style: regular12.copyWith(color: colorSecondaryText4),
              ),
              InkWell(
                onTap: () {
                  // showCustomDialog(context, 'isChecked');
                },
                child: Text(
                  'HAPUS',
                  style: semibold12.copyWith(color: red),
                ),
              ),
            ],
          ),
          const SizedBox(height: spacingMicro),
          Text(
            '#2342360 HAZARD',
            style: medium12.copyWith(color: primaryColor),
          ),
          const SizedBox(height: spacingMicro),
          Text(
            'Ada Rintangan',
            style: regular12.copyWith(
              color: colorSecondaryText4,
            ),
          ),
          const SizedBox(height: spacingMicro),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'PIC',
                      style: regular12.copyWith(color: colorSecondaryText2),
                    ),
                    const SizedBox(height: spacingMicro),
                    Text(
                      'Pelapor',
                      style: regular12.copyWith(color: colorSecondaryText2),
                    ),
                    const SizedBox(height: spacingMicro),
                    Text(
                      'Perusahaan',
                      style: regular12.copyWith(color: colorSecondaryText2),
                    ),
                    const SizedBox(height: spacingMicro),
                    Text(
                      'Lokasi',
                      style: regular12.copyWith(color: colorSecondaryText2),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'DWI AL AJI SUSENO',
                      style: medium12.copyWith(color: colorSecondaryText4),
                    ),
                    const SizedBox(height: spacingMicro),
                    Text(
                      'SAFETY EVALUATOR N PJO',
                      style: medium12.copyWith(color: colorSecondaryText4),
                    ),
                    const SizedBox(height: spacingMicro),
                    Text(
                      'PT Fusi Solusi Transformasi',
                      style: medium12.copyWith(color: colorSecondaryText4),
                    ),
                    const SizedBox(height: spacingMicro),
                    Text(
                      'Lain-lain',
                      style: medium12.copyWith(color: colorSecondaryText4),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Checkbox(
                  value: isChecked,
                  onChanged: (newValue) {},
                ),
              )
            ],
          ),
          const SizedBox(
            height: spacingNormal * 2,
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(paddingSmall),
                      color: grey,
                      child: Text(
                        'Status',
                        style: medium12.copyWith(color: colorSecondaryText4),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(paddingSmall),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                        color: red,
                      ),
                      child: Text(
                        'REJECT 1',
                        style: semibold12.copyWith(color: colorSecondaryText5),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(paddingSmall),
                      color: grey,
                      child: Text(
                        'Risk',
                        style: medium12.copyWith(color: colorSecondaryText4),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(paddingSmall),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                        color: yellow,
                      ),
                      child: Text(
                        'Medium',
                        style: semibold12.copyWith(color: colorSecondaryText5),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
