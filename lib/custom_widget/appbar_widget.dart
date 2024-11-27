import 'package:finkit_project/custom_widget/textstyle_widget.dart';
import 'package:flutter/material.dart';
import 'color_widget.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      title: const Text("LifeLineCard"),
      titleTextStyle: const TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
      backgroundColor: ColorWidget.colorGreen100,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}