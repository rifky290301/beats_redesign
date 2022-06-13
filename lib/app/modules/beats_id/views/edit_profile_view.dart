import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/theme/colors.dart';
import '../../../utils/theme/fonts.dart';
import '../../../utils/theme/size.dart';

class EditProfileView extends GetView {
  // final myControllerCamp = Get.find<BeatsIdController>();
  // final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: primaryColor,
      body: Column(
        children: [
          const SizedBox(
            height: paddingLarge,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(
              spacingNormal,
              spacingNormal,
              0,
              0,
            ),
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: (() {
                Get.back();
              }),
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
              color: colorSecondary3,
              iconSize: 24,
            ),
          ),
          const SizedBox(
            height: spacingLarge,
          ),
          Column(
            children: [
              Text(
                'Edit',
                style: medium20.copyWith(color: colorSecondaryText5),
              ),
              Text(
                'Profile',
                style: semibold24.copyWith(
                  color: colorSecondaryText5,
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            height: context.heightQuery * 0.75,
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  color: Color(0x3600000F),
                  offset: Offset(0, -1),
                )
              ],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 8, 24, 0),
              child: ListView(
                children: [
                  const SizedBox(
                    height: spacingLarge,
                  ),
                  TextField(
                    // controller: myController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    autocorrect: false,
                    decoration: InputDecoration(
                      labelText: "Email",
                      border: const OutlineInputBorder(),
                      hintText: "Email",
                      hintStyle: regular14.copyWith(color: colorInputText),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: primaryColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(
                          borderRadiusNormal,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: primaryColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(
                          borderRadiusNormal,
                        ),
                      ),
                      labelStyle: const TextStyle(
                        color: primaryColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: spacingNormal),
                  TextField(
                    // controller: myControllerCamp.password,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    autocorrect: false,
                    decoration: InputDecoration(
                      labelText: "No Handphone",
                      border: const OutlineInputBorder(),
                      hintText: "No Handphone",
                      hintStyle: regular14.copyWith(color: colorInputText),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: primaryColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(
                          borderRadiusNormal,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: primaryColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(
                          borderRadiusNormal,
                        ),
                      ),
                      labelStyle: const TextStyle(
                        color: primaryColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: spacingLarge),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        primaryColor,
                      ),
                      textStyle: MaterialStateProperty.all<TextStyle>(
                        medium14.copyWith(
                          color: colorSecondary1,
                        ),
                      ),
                      minimumSize: MaterialStateProperty.all<Size>(
                        Size(
                          context.widthQuery * 0.5,
                          50,
                        ),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "SUMBIT",
                      style: semibold14.copyWith(
                        color: colorSecondaryText5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
