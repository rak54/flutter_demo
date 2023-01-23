import 'package:flutter/material.dart';
import 'package:flutter_demo/app_routing/app_routes.dart';
import 'package:flutter_demo/app_routing/app_screens.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
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
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/header_black.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 20.0, bottom: 20.0),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 10, right: 10, bottom: 5),
                          child: TextFormField(
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'User ID/Email is required'.tr;
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'User ID/Email',
                              fillColor: Colors.white,
                              filled: true,
                              prefixIcon: const Icon(
                                Icons.person_outline,
                                color: Colors.grey,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    color: Colors.black12, width: 0.5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.blue.shade600, width: 1),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 0.5),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 0.5),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 10, right: 10, bottom: 5),
                          child: TextFormField(
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'User ID/Email is required'.tr;
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Password',
                              fillColor: Colors.white,
                              filled: true,
                              prefixIcon: const Icon(
                                Icons.person_outline,
                                color: Colors.grey,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    color: Colors.black12, width: 0.5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.blue.shade600, width: 1),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 0.5),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 0.5),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text("Don't have an account?"),
                            Text(
                              "Register",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Login"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
