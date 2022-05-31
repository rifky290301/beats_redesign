import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/theme/colors.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final myCLogin = Get.put(LoginController());

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
                  // alignment: Alignment.bottomCenter,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.8,
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
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/login/logo_beats_login_page.png',
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 100,
                          fit: BoxFit.contain,
                        ),
                        TextField(
                          controller: myCLogin.beatsID,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          autocorrect: false,
                          decoration: InputDecoration(
                            labelText: "Beats ID",
                            border: const OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: primaryColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusColor: primaryColor,
                          ),
                        ),
                        // const SizedBox(height: 15),
                        // TextField(
                        //   controller: controller.password,
                        //   keyboardType: TextInputType.text,
                        //   textInputAction: TextInputAction.next,
                        //   autocorrect: false,
                        //   decoration: const InputDecoration(
                        //     labelText: "Password",
                        //     border: OutlineInputBorder(),
                        //   ),
                        // ),
                        // const Text(
                        //   'Hello World',
                        // ),
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
