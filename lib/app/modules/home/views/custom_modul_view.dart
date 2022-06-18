import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/theme/colors.dart';
import '../../../utils/theme/fonts.dart';
import '../../../utils/theme/size.dart';
import '../../../widgets/back_button_widget.dart';
import '../../../widgets/badge_medium_widget.dart';
import '../../../widgets/modul_icon_widget.dart';
import '../../../widgets/text_field_widget.dart';

class CustomModulView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            spacingLarge,
            spacingNormal,
            spacingLarge,
            spacingNormal,
          ),
          child: Column(
            children: [
              const SizedBox(height: paddingLarge),
              Container(
                padding: const EdgeInsets.fromLTRB(
                  0,
                  spacingNormal,
                  0,
                  0,
                ),
                alignment: Alignment.centerLeft,
                child: const ButtonBackWidget(
                  hexacode: primaryColor,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kategori',
                    style: semibold16.copyWith(color: colorSecondaryText4),
                  ),
                  const SizedBox(height: paddingNormal),
                  const TextFieldWidget(
                    label: 'Kategorimu',
                  ),
                  const SizedBox(height: paddingNormal),
                  Container(
                    height: 300,
                    width: context.widthQuery,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(paddingNormal),
                      border: Border.all(
                        color: primaryColor,
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Geser Modul Disini',
                        style: regular14.copyWith(color: colorInputText),
                      ),
                    ),
                  ),
                  GridView.count(
                    crossAxisCount: 4,
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    children: const [
                      ModulIconWidget(
                        image: 'assets/images/home/modul/hazard.svg',
                        title: 'BeHazard',
                      ),
                      ModulIconWidget(
                        image: 'assets/images/home/modul/inspection.svg',
                        title: 'BeInspection',
                      ),
                      ModulIconWidget(
                        image: 'assets/images/home/modul/beobs.svg',
                        title: 'BeObservation',
                      ),
                      ModulIconWidget(
                        image: 'assets/images/home/modul/obsareakritis.svg',
                        title: 'ObsAreaKritis',
                      ),
                      ModulIconWidget(
                        image: 'assets/images/home/modul/commissioning.svg',
                        title: 'BeCommission',
                      ),
                      ModulIconWidget(
                        image: 'assets/images/home/modul/becoaching.svg',
                        title: 'beCoaching',
                      ),
                      ModulIconWidget(
                        image: 'assets/images/home/modul/riwayatcoach.svg',
                        title: 'Riwayat Coaching',
                      ),
                      ModulIconWidget(
                        image: 'assets/images/home/modul/monitoringsbs.svg',
                        title: 'Mentoring SBS',
                      ),
                      ModulIconWidget(
                        image: 'assets/images/home/modul/suratizinbekerja.svg',
                        title: 'Surat Izin Bekerja',
                      ),
                      ModulIconWidget(
                        image: 'assets/images/home/modul/beevent.svg',
                        title: 'BeEvent',
                      ),
                      ModulIconWidget(
                        image: 'assets/images/home/modul/besurvey.svg',
                        title: 'BeSurvey',
                      ),
                      ModulIconWidget(
                        image: 'assets/images/home/modul/vaccine.svg',
                        title: 'BeVaccine',
                      ),
                      ModulIconWidget(
                        image: 'assets/images/home/modul/belearning.svg',
                        title: 'BeLearning',
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Row(
                      children: const [
                        Spacer(),
                        BadgeMediumWidget(
                          hexacodebg: primaryColor,
                          hexacodetext: colorSecondaryText5,
                          text: 'DONE',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
