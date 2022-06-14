import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../../utils/theme/colors.dart';
import '../../../../utils/theme/fonts.dart';
import '../../../../utils/theme/size.dart';
import '../../../../widgets/back_button_widget.dart';

class HelpDesk3View extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(paddingLarge),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: paddingLarge,
              ),
              const ButtonBackWidget(
                hexacode: primaryColor,
              ),
              const SizedBox(
                height: paddingLarge,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Penggunaan BeHelpdesk',
                      style: semibold24.copyWith(color: primaryColor),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: SvgPicture.asset(
                      'assets/images/home/shortcut_icon/penggunaan_helpdesk.svg',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: paddingLarge,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: SvgPicture.asset(
                      'assets/images/home/shortcut_icon/faq.svg',
                    ),
                  ),
                  const SizedBox(
                    width: spacingNormal,
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fitur Frequently Ask Question',
                          style: semibold16.copyWith(
                            color: colorSecondaryText4,
                          ),
                        ),
                        const SizedBox(
                          height: paddingSmall,
                        ),
                        Text(
                          'Fitur Asisten FAQ merupakan fitur pesan otomatis yang berisikan daftar pertanyaan yang sering diajukan oleh Pembeli beserta jawabannya. ',
                          style: regular12.copyWith(
                            color: colorPrimaryText,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: spacingLarge),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: SvgPicture.asset(
                      'assets/images/home/shortcut_icon/helpdesk.svg',
                      height: 50,
                    ),
                  ),
                  const SizedBox(width: spacingNormal),
                  Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cara Mengajukan Pertanyaan Pada Platform BeHelpdesk',
                          style: semibold16.copyWith(
                            color: colorSecondaryText4,
                          ),
                        ),
                        const SizedBox(height: paddingSmall),
                        Text(
                          'Untuk mengajukan pertanyaan pada platform BeHelpdesk terdapat dua cara sebagai berikut:',
                          style: regular12.copyWith(
                            color: colorPrimaryText,
                          ),
                        ),
                        const SizedBox(height: spacingNormal),
                        Text(
                          'Menggunakan Email',
                          style: medium12.copyWith(
                            color: colorSecondaryText4,
                          ),
                        ),
                        const SizedBox(height: paddingSmall),
                        Text(
                          """- Klik Email pada laman BeHelpdesk
- Otomatis akan membuka laman email Anda
- Ketikkan pertanyaan yang mau Anda ajukan
- Silahkan kirim email Anda""",
                          style: regular10.copyWith(color: colorSecondaryText4),
                        ),
                        const SizedBox(height: spacingNormal),
                        Text(
                          'Menggunakan No.Telepon',
                          style: medium12.copyWith(
                            color: colorSecondaryText4,
                          ),
                        ),
                        const SizedBox(height: paddingSmall),
                        Text(
                          """- Klik Telepon pada laman BeHelpdesk
- Otomatis akan membuka laman telepon Anda
- Anda dapat mengirim pesan berupa SMS ke nomor yang tertera
- Ketikkan pertanyaan yang mau Anda ajukan
- Silahkan kirim SMS tersebut""",
                          style: regular10.copyWith(color: colorSecondaryText4),
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
