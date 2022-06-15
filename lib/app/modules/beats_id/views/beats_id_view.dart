import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/theme/colors.dart';
import '../../../utils/theme/fonts.dart';
import '../../../utils/theme/size.dart';
import '../controllers/beats_id_controller.dart';
import 'akun_saya_view.dart';
import 'be_record_view.dart';
import 'edit_profile_view.dart';
import 'kompetensi_view.dart';
import 'lisensi_view.dart';
import 'medical_check_up_view.dart';
import 'panduan_beats_view.dart';
import 'sertifikasi_eksternal_view.dart';
import 'working_permit_view.dart';

class BeatsIdView extends GetView<BeatsIdController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(paddingLarge),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: spacingLarge,
              ),
              SizedBox(
                width: 100,
                height: 30,
                child: Image.asset(
                  'assets/images/login/logo_beats_login_page.png',
                  width: context.widthQuery,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                height: paddingLarge,
              ),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.asset(
                      'assets/images/beats_point/profile.png',
                      width: 60,
                      height: 60,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(
                    width: spacingNormal,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: context.widthQuery * 0.5,
                        child: Text(
                          'RIGGINA ADRIANI OCEANIA',
                          style: semibold16.copyWith(
                            color: colorSecondaryText4,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                        ),
                      ),
                      const Text(
                        '0877-1630-1634',
                        style: regular10,
                      ),
                      const Text(
                        'rigginaadriani@gmail.com',
                        style: regular10,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    width: 42,
                    height: 42,
                    decoration: const BoxDecoration(
                      color: colorSecondaryText5,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: (() {
                        Get.to(EditProfileView());
                      }),
                      icon: const Icon(Icons.edit),
                      color: black,
                      iconSize: 24,
                    ),
                  )
                ],
              ),
              const SizedBox(height: paddingNormal),
              const Divider(),
              const SizedBox(height: paddingNormal),
              Text(
                "Beats ID",
                style: semibold12.copyWith(
                  color: colorPrimaryText,
                ),
              ),
              const SizedBox(height: paddingNormal),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        primary: primaryColor,
                        backgroundColor: white,
                        side: const BorderSide(color: primaryColor, width: 1),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(borderRadiusNormal),
                          ),
                        ),
                      ),
                      child: const Text('PJIKB', style: semibold16),
                      onPressed: () {
                        print('Pressed');
                      },
                    ),
                  ),
                  const SizedBox(width: spacingLarge),
                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: primaryColor,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(borderRadiusNormal),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.qr_code_scanner),
                          SizedBox(width: spacingNormal),
                          Text("BeatsID", style: semibold16),
                        ],
                      ),
                      onPressed: () {
                        print('Pressed');
                      },
                    ),
                  )
                ],
              ),
              const SizedBox(height: paddingNormal),
              const Divider(),
              const SizedBox(height: paddingNormal),
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(AkunSayaView());
                    },
                    child: ListTile(
                      leading: Container(
                        width: 42,
                        height: 42,
                        decoration: const BoxDecoration(
                          color: colorSecondaryText5,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/beats_id/icons/akun.png',
                          height: 24,
                        ),
                      ),
                      title: Text(
                        'Akun Saya',
                        style: semibold12.copyWith(color: colorPrimaryText),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ),
                  const SizedBox(height: spacingNormal),
                  Text(
                    'Tentang Pekerjaan',
                    style: semibold12.copyWith(
                      color: colorPrimaryText,
                    ),
                  ),
                  const SizedBox(height: spacingNormal),
                  InkWell(
                    onTap: () {
                      Get.to(WorkingPermitView());
                    },
                    child: ListTile(
                      leading: Container(
                        width: 42,
                        height: 42,
                        decoration: const BoxDecoration(
                          color: colorSecondaryText5,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/beats_id/icons/working_permit.png',
                          height: 24,
                        ),
                      ),
                      title: Text(
                        'Working Permit',
                        style: semibold12.copyWith(color: colorPrimaryText),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ),
                  const SizedBox(height: spacingNormal),
                  InkWell(
                    onTap: () {
                      Get.to(LisensiView());
                    },
                    child: ListTile(
                      leading: Container(
                        width: 42,
                        height: 42,
                        decoration: const BoxDecoration(
                          color: colorSecondaryText5,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/beats_id/icons/lisensi.png',
                          height: 24,
                        ),
                      ),
                      title: Text(
                        'Lisensi',
                        style: semibold12.copyWith(color: colorPrimaryText),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ),
                  const SizedBox(height: spacingNormal),
                  InkWell(
                    onTap: () {
                      Get.to(BeRecordView());
                    },
                    child: ListTile(
                      leading: Container(
                        width: 42,
                        height: 42,
                        decoration: const BoxDecoration(
                          color: colorSecondaryText5,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/beats_id/icons/record.png',
                          height: 24,
                        ),
                      ),
                      title: Text(
                        'BeRecord',
                        style: semibold12.copyWith(color: colorPrimaryText),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ),
                  const SizedBox(height: spacingNormal),
                  Text(
                    'Sertifikasi',
                    style: semibold12.copyWith(
                      color: colorPrimaryText,
                    ),
                  ),
                  const SizedBox(height: spacingNormal),
                  InkWell(
                    onTap: () {
                      Get.to(KompetensiView());
                    },
                    child: ListTile(
                      leading: Container(
                        width: 42,
                        height: 42,
                        decoration: const BoxDecoration(
                          color: colorSecondaryText5,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/beats_id/icons/kompetensi.png',
                          height: 24,
                        ),
                      ),
                      title: Text(
                        'Kompetensi',
                        style: semibold12.copyWith(color: colorPrimaryText),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ),
                  const SizedBox(height: spacingNormal),
                  InkWell(
                    onTap: () {
                      Get.to(SertifikasiEksternalView());
                    },
                    child: ListTile(
                      leading: Container(
                        width: 42,
                        height: 42,
                        decoration: const BoxDecoration(
                          color: colorSecondaryText5,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/beats_id/icons/eksternal.png',
                          height: 24,
                        ),
                      ),
                      title: Text(
                        'Sertifikasi Eksternal',
                        style: semibold12.copyWith(color: colorPrimaryText),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ),
                  const SizedBox(height: spacingNormal),
                  InkWell(
                    onTap: () {
                      Get.to(MedicalCheckUpView());
                    },
                    child: ListTile(
                      leading: Container(
                        width: 42,
                        height: 42,
                        decoration: const BoxDecoration(
                          color: colorSecondaryText5,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/beats_id/icons/mcu.png',
                          height: 24,
                        ),
                      ),
                      title: Text(
                        'Medical Check Up',
                        style: semibold12.copyWith(color: colorPrimaryText),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ),
                  const SizedBox(height: spacingNormal),
                  Text(
                    'Tentang Aplikasi',
                    style: semibold12.copyWith(
                      color: colorPrimaryText,
                    ),
                  ),
                  const SizedBox(height: spacingNormal),
                  InkWell(
                    onTap: () {
                      Get.to(PanduanBeatsView());
                    },
                    child: ListTile(
                      leading: Container(
                        width: 42,
                        height: 42,
                        decoration: const BoxDecoration(
                          color: colorSecondaryText5,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/beats_id/icons/panduanbeats.png',
                          height: 24,
                        ),
                      ),
                      title: Text(
                        'Panduan BEATS',
                        style: semibold12.copyWith(color: colorPrimaryText),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
