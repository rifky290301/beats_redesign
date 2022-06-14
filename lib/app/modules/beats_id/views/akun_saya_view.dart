import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/theme/fonts.dart';

class AkunSayaView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Stack(
          children: [
            const Align(
              alignment: AlignmentDirectional(-0.78, -0.92),
              child: Text(
                'Akun',
                style: semibold14,
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(-0.77, -0.86),
              child: Text(
                'Saya',
                style: semibold14,
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 1.69),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.75,
                decoration: const BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, -0.5),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 120,
                child: Align(
                  alignment: const AlignmentDirectional(0, -6),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      'assets/images/beats_point/profile.png',
                      width: 100,
                      height: 100,
                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFEEEEEE),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 22,
                      color: Color(0x1A000000),
                      offset: Offset(0, 4),
                    )
                  ],
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(0, -0.52),
              child: Text(
                'RIGGINA ADRIANI OCEANIA',
                style: semibold14,
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(0, -0.47),
              child: Text(
                'Crew',
                style: semibold14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
