import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/theme/colors.dart';
import '../../../utils/theme/size.dart';

class TentangView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Apa itu Beats Point?'),
          SizedBox(
            height: spacingNormal,
          ),
          Text(
            'Beats Point adalah bonus yang akan anda dapatkan ketika melakukan dan menyelesaikan pelaporan (Hazard report, Inspeksi, Observasi, dan Coaching) dan training yang ada pada laman beats learning di aplikasi beats. Poin yang sudah di dapat akan di reset dan mejadi 0 per kuartal, dan user dengan poin tertinggi pada periodenya akan berkesempatan untuk mendapatkan hadiah menarik',
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: spacingNormal,
          ),
          Divider(
            color: colorSecondaryText5,
          ),
          SizedBox(
            height: spacingNormal,
          ),
          Text('Bagaimana cara mendapatkan poin?'),
          Text('Point bisa didapatkan pada saat melakukan :')
        ],
      ),
    );
  }
}
