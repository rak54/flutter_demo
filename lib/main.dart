import 'package:flutter/material.dart';
import 'package:flutter_demo/app_routing/app_routes.dart';
import 'package:flutter_demo/app_routing/app_screens.dart';
import 'package:flutter_demo/second_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
      getPages: AppScreens.screens,
      initialRoute: routeFirst,
    defaultTransition: Transition.fade,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
      ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          centerTitle: true,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Get.toNamed(routeSecond);
            },
            child: const Text("Next Screen"),
          ),
        ));
  }
}
