import 'package:finkit_project/custom_widget/hw_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../getx_controller/getx_splash_controller.dart';
class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final GetXSplashController splashGetXController = Get.put(GetXSplashController());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Image.asset('assets/images/MasterCard2.png', height: 120,)),
            20.height,
            const Text("We Offer Virtual Prepaid Mastercard", style: TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
