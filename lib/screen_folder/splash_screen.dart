import 'package:finkit_project/custom_widget/hw_widget.dart';
import 'package:finkit_project/custom_widget/textstyle_widget.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
            Center(child: Image.asset('assets/images/MasterCard2.png', height: 150,)),
            20.height,
            Text("We Offer Virtual Prepaid Mastercard", style: textStyle16(fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
