import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/theme/colors.dart';
import '../../../utils/theme/fonts.dart';
import '../../../utils/theme/size.dart';
import '../controllers/beats_id_controller.dart';

class EditProfileView extends GetView {
  final myControllerCamp = Get.find<BeatsIdController>();
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          const Text('Edit profile'),
          const Spacer(),
          Container(
            height: context.heightQuery * 0.7,
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
                    controller: myController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    autocorrect: false,
                    decoration: InputDecoration(
                      labelText: "Beats ID",
                      border: const OutlineInputBorder(),
                      hintText: "Beats ID",
                      hintStyle: body2.copyWith(color: colorInputText),
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
                      labelText: "Password",
                      border: const OutlineInputBorder(),
                      hintText: "Password",
                      hintStyle: body2.copyWith(color: colorInputText),
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
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        primaryColor,
                      ),
                      textStyle: MaterialStateProperty.all<TextStyle>(
                        button.copyWith(
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
                    child: const Text("LOGIN"),
                  ),
                  SizedBox(
                    height: context.heightQuery * 0.25,
                    child: const Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Powered by Berau Coal v0.2.9.6',
                        style: caption,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
