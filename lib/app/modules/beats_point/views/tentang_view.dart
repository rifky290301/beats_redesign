import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/theme/colors.dart';
import '../../../utils/theme/fonts.dart';
import '../../../utils/theme/size.dart';

class TentangView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Apa itu Beats Point?',
              style: semibold12.copyWith(color: colorSecondaryText4)),
          const SizedBox(
            height: spacingNormal,
          ),
          Text(
            'Beats Point adalah bonus yang akan anda dapatkan ketika melakukan dan menyelesaikan pelaporan (Hazard report, Inspeksi, Observasi, dan Coaching) dan training yang ada pada laman beats learning di aplikasi beats. Poin yang sudah di dapat akan di reset dan mejadi 0 per kuartal, dan user dengan poin tertinggi pada periodenya akan berkesempatan untuk mendapatkan hadiah menarik',
            textAlign: TextAlign.justify,
            style: regular12.copyWith(color: colorSecondaryText4),
          ),
          const SizedBox(
            height: spacingNormal,
          ),
          const Divider(
            color: colorSecondaryText5,
          ),
          const SizedBox(
            height: spacingNormal,
          ),
          Text('Bagaimana cara mendapatkan poin?',
              style: semibold12.copyWith(color: colorSecondaryText4)),
          Text(
            'Point bisa didapatkan pada saat melakukan :',
            style: regular12.copyWith(color: colorSecondaryText4),
          )
        ],
      ),
    );
  }
}
