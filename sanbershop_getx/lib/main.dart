import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getxfire/getxfire.dart';
import 'package:sanbershop_getx/pages/home.dart';
import 'package:sanbershop_getx/pages/splash.dart';
import 'controllers/auth_controller.dart';

AuthController authController = AuthController();

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SanberCode Final Project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Obx(
        () {
          if (authController.authenicated.value) {
            return const HomeView();
          } else {
            return const SplashScreen();
          }
        },
      ),
    );
  }
}

