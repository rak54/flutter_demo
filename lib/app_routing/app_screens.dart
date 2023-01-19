import 'package:flutter_demo/main.dart';
import 'package:flutter_demo/second_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'app_routes.dart';

class AppScreens {
  static final screens = [
    GetPage(
      name: routeFirst,
      page: () => const MyApp(),
    ),
    GetPage(
      name: routeSecond,
      page: () => const SecondScreen(),
    ),
  ];
}