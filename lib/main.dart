import 'package:bchurch/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bchurch/views/splash_view.dart';
import 'package:bchurch/controllers/splash_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final SplashController spl = Get.put(SplashController());
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Obx(() => spl.splash == true ? SplachScreen() : WelcomePage()),
    );
  }
}
