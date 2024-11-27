import 'package:finkit_project/custom_widget/bottomnav_widget.dart';
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
      initialRoute: '/SplashScreen',
      getPages: [
        GetPage(name: '/SplashScreen', page: () =>  const SplashScreen(),),
        GetPage(name: '/BottomNavWidget', page: () =>   BottomNavWidget(),),
        // GetPage(name: '/signIn', page: () =>   SignInScreen(),),
        // GetPage(name: '/signup', page: () =>   SignupScreen(),),
        // GetPage(name: '/bottomNav', page: () =>  BottomNav(),),
      ],
    );
  }
}
