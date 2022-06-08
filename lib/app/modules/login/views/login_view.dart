import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/theme/colors.dart';
import '../../../utils/theme/fonts.dart';
import '../../../utils/theme/size.dart';
import '../../navigation/views/navigation_view.dart';
import '../controllers/login_controller.dart';

class LoginView extends StatefulWidget {
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final myControllerCamp = Get.find<LoginController>();
  final double _height = 0;

  @override
  void initState() {
    super.initState();
    print(_height);
    Future.delayed(const Duration(seconds: 5), () {
      double _height = context.heightQuery * 0.7;
      setState(() {});
      print(_height);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(-1, -0.8),
              child: Image.asset(
                'assets/images/splash_screen/splash_screen_1.png',
                width: context.widthQuery * 0.5,
                height: context.heightQuery * 0.5,
                fit: BoxFit.contain,
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(1.2, -0.2),
              child: Image.asset(
                'assets/images/splash_screen/splash_screen_2.png',
                width: context.widthQuery * 0.5,
                height: context.heightQuery * 0.5,
                fit: BoxFit.contain,
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 0),
              child: Image.asset(
                'assets/images/splash_screen/logo_beats_splash_screen.png',
                width: 300,
                height: 100,
                fit: BoxFit.contain,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 500),
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
                      Padding(
                        padding: const EdgeInsets.fromLTRB(
                          0,
                          paddingLarge,
                          0,
                          paddingLarge,
                        ),
                        child: Container(
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
                      ),
                      TextField(
                        controller: myControllerCamp.beatsID,
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
                        controller: myControllerCamp.password,
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
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        onPressed: () => Get.to(
                          NavigationView(),
                          duration: const Duration(milliseconds: 300),
                          transition: Transition.fade,
                        ),
                        // onPressed: () => controller.login(
                        //   controller.beatsID.text,
                        //   controller.password.text,
                        // ),
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
            ),
          ],
        ),
      ),
    );
  }
}
