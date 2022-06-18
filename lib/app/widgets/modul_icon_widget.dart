import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../modules/home/views/modul_page/be_hazard/be_hazard_view.dart';
import '../utils/theme/colors.dart';
import '../utils/theme/fonts.dart';

class ModulIconWidget extends StatelessWidget {
  final String image;
  final String title;
  const ModulIconWidget({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(BeHazardView());
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: black.withOpacity(0.1),
                  blurRadius: 1,
                  offset: const Offset(0.5, 1),
                ),
              ],
            ),
            child: SvgPicture.asset(
              image,
              height: 50,
            ),
          ),
          Text(
            title,
            style: regular10,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
