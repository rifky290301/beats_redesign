import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../utils/theme/colors.dart';
import '../../../../../utils/theme/fonts.dart';
import '../../../../../widgets/back_button_widget.dart';
import 'be_hazard_kategori_view.dart';
import 'be_hazard_lokasi_view.dart';
import 'be_hazard_temuan_view.dart';

class BeHazardView extends GetView {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const ButtonBackWidget(hexacode: primaryColor),
                ),
                Text(
                  'BeHazard',
                  style: semibold16.copyWith(color: primaryColor),
                ),
                Container(
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/home/appbar_icon/signal4x.png',
                        width: 20,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            backgroundColor: white,
            bottom: const PreferredSize(
              preferredSize: Size(10, 20),
              child: TabBar(
                indicatorColor: primaryColor,
                labelColor: black,
                labelStyle: semibold12,
                tabs: [
                  Tab(text: 'Lokasi'),
                  Tab(text: 'Kategori'),
                  Tab(text: 'Temuan'),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              BeHazardLokasiView(),
              BeHazardKategoriView(),
              BeHazardTemuanView(),
            ],
          ),
        ),
      ),
    );
  }
}
