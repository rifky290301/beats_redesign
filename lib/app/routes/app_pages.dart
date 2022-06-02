import 'package:get/get.dart';

import '../modules/be_campaign/bindings/be_campaign_binding.dart';
import '../modules/be_campaign/views/be_campaign_view.dart';
import '../modules/beats_id/bindings/beats_id_binding.dart';
import '../modules/beats_id/views/beats_id_view.dart';
import '../modules/beats_point/bindings/beats_point_binding.dart';
import '../modules/beats_point/views/beats_point_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/navigation/bindings/navigation_binding.dart';
import '../modules/navigation/views/navigation_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';
import '../modules/task_list/bindings/task_list_binding.dart';
import '../modules/task_list/views/task_list_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.NAVIGATION;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.BE_CAMPAIGN,
      page: () => BeCampaignView(),
      binding: BeCampaignBinding(),
    ),
    GetPage(
      name: _Paths.NAVIGATION,
      page: () => NavigationView(),
      binding: NavigationBinding(),
    ),
    GetPage(
      name: _Paths.BEATS_ID,
      page: () => BeatsIdView(),
      binding: BeatsIdBinding(),
    ),
    GetPage(
      name: _Paths.BEATS_POINT,
      page: () => BeatsPointView(),
      binding: BeatsPointBinding(),
    ),
    GetPage(
      name: _Paths.TASK_LIST,
      page: () => TaskListView(),
      binding: TaskListBinding(),
    ),
  ];
}
