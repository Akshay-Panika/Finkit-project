import 'package:finkit_project/build_widget/build_bottom_nav.dart';
import 'package:finkit_project/screen_folder/intro_screen.dart';
import 'package:finkit_project/screen_folder/lifelinecard_limit_screen.dart';
import 'package:finkit_project/screen_folder/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splashScreen',
      getPages: [
        GetPage(name: '/splashScreen', page: () =>   SplashScreen(),),
        GetPage(name: '/introScreen', page: () =>   const IntroScreen(),),
        GetPage(name: '/bottomNavWidget', page: () =>   BuildBottomNav(),),
      ],
    );
  }
}
