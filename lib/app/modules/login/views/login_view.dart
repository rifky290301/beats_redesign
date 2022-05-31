import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/theme/colors.dart';
import '../../../utils/theme/fonts.dart';
import '../../../utils/theme/size.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.green,
          shape: BoxShape.rectangle,
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: const AlignmentDirectional(-1, -0.8),
                  child: Image.asset(
                    'assets/images/splash_screen/splash_screen_1.png',
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.5,
                    fit: BoxFit.contain,
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(1.2, -0.2),
                  child: Image.asset(
                    'assets/images/splash_screen/splash_screen_2.png',
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.5,
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
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
                        Container(
                          padding: EdgeInsets.fromLTRB(
                            context.widthQuery * 0.25,
                            12,
                            context.widthQuery * 0.25,
                            12,
                          ),
                          child: Image.asset(
                            'assets/images/login/logo_beats_login_page.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        TextField(
                          controller: controller.beatsID,
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
                          controller: controller.password,
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
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                          onPressed: () => controller.login(
                            controller.beatsID.text,
                            controller.password.text,
                          ),
                          child: const Text("LOGIN"),
                        ),
                        const SizedBox(
                          height: 48,
                        ),
                        const Center(
                          child: Text(
                            'Powered by Berau Coal v0.2.9.6',
                            style: caption,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}