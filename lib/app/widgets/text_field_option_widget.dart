import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modules/home/views/modul_page/data/data_tools_pengamatan_view.dart';
import '../utils/theme/colors.dart';
import '../utils/theme/fonts.dart';
import '../utils/theme/size.dart';

class TextFieldOptionWidget extends StatelessWidget {
  final String label;
  const TextFieldOptionWidget({Key? key, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
            label,
            style: semibold12.copyWith(
              color: colorPrimaryText,
            ),
          ),
          const SizedBox(
            height: spacingNormal,
          ),
          Container(
            height: 60,
            width: context.widthQuery,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(paddingNormal),
              border: Border.all(
                color: primaryColor,
                width: 1,
              ),
            ),
            child: Center(
              child: Text(
                '--Pilih $label --',
                style: medium12.copyWith(color: primaryColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
