import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(
    GetMaterialApp(
      title: "Application",
      theme: ThemeData(primarySwatch: Colors.green),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
