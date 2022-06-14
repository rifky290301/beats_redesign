import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonBackWidget extends StatelessWidget {
  final Color hexacode;
  const ButtonBackWidget({Key? key, required this.hexacode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (() {
        Get.back();
      }),
      icon: const Icon(Icons.arrow_back_ios_new_rounded),
      color: hexacode,
      iconSize: 24,
    );
  }
}
