import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/theme/fonts.dart';
import '../../../utils/theme/size.dart';
import '../controllers/beats_id_controller.dart';

class BeatsIdView extends GetView<BeatsIdController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(paddingLarge),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(),
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
                    'assets/images/home/helpdesk.png',
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
                  children: const [
                    Text(
                      'RIGGINA ADRIANI OCEANIA',
                      style: body1,
                    ),
                    Text(
                      'PJIKB',
                      style: overline,
                    ),
                    Text(
                      'rigginaadriani@gmail.com',
                      style: overline,
                    ),
                  ],
                ),
                Container(
                  width: 42,
                  height: 42,
                  decoration: const BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.settings_outlined,
                    color: Colors.black,
                    size: 24,
                  ),
                )
              ],
            ),
            const SizedBox(height: paddingLarge),
            const Divider(),
            const SizedBox(height: paddingLarge),
            const Text("Beats ID", style: caption),
            Row(
              children: [
                OutlinedButton(
                  onPressed: null,
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(paddingNormal),
                      ),
                    ),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(
                        vertical: paddingNormal,
                        horizontal: paddingNormal,
                      ),
                    ),
                    textStyle: MaterialStateProperty.all(caption),
                  ),
                  child: const Text("Button text"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
