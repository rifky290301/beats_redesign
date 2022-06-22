import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/theme/colors.dart';
import '../../login/views/login_view.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends StatefulWidget {
  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => LoginView(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: primaryColor,
          shape: BoxShape.rectangle,
        ),
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
            Align(
              alignment: const AlignmentDirectional(0, 0),
              child: Image.asset(
                'assets/images/splash_screen/logo_beats_splash_screen.png',
                width: 300,
                height: 100,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
