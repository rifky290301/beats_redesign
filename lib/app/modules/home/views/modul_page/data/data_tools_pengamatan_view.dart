import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../utils/theme/colors.dart';
import '../../../../../utils/theme/fonts.dart';
import '../../../../../utils/theme/size.dart';
import '../../../../../widgets/list_tile_data_modul_widget.dart';

class DataToolsPengamatanView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Data Tools Pengamatan',
          style: medium14.copyWith(color: primaryColor),
        ),
        iconTheme: const IconThemeData(color: primaryColor),
        centerTitle: true,
        backgroundColor: white,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search_rounded,
              color: primaryColor,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(color: colorSecondaryText5),
        padding: const EdgeInsets.fromLTRB(
          spacingNormal,
          spacingLarge,
          spacingNormal,
          spacingLarge,
        ),
        child: ListView(children: const [
          Divider(),
          ListTileDataModulWidget(
            id: 24697,
            title: 'Coaching - Interaksi Langsung',
          ),
          Divider(),
          ListTileDataModulWidget(
            id: 24697,
            title: 'Coaching - Interaksi Langsung',
          ),
          Divider(),
          ListTileDataModulWidget(
            id: 24697,
            title: 'Coaching - Interaksi Langsung',
          ),
          Divider(),
          ListTileDataModulWidget(
            id: 24697,
            title: 'Coaching - Interaksi Langsung',
          ),
          Divider(),
          ListTileDataModulWidget(
            id: 24697,
            title: 'Coaching - Interaksi Langsung',
          ),
          Divider()
        ]),
      ),
    );
  }
}
