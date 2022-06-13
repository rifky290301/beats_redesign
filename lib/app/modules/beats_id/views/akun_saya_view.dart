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
                'Hello World',
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
            const Align(
              alignment: AlignmentDirectional(-0.77, -0.86),
              child: Text(
                'Hello World',
                style: semibold14,
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.04, -0.63),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 120,
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
            Align(
              alignment: const AlignmentDirectional(0, -0.79),
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
            const Align(
              alignment: AlignmentDirectional(-0.01, -0.52),
              child: Text(
                'Hello World',
                style: semibold14,
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(-0.02, -0.47),
              child: Text(
                'Hello World',
                style: semibold14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
