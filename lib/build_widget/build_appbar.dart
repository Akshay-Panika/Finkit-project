import 'package:finkit_project/custom_widget/textstyle_widget.dart';
import 'package:flutter/material.dart';
import '../custom_widget/color_widget.dart';

class BuildAppbar extends StatelessWidget implements PreferredSizeWidget {
  const BuildAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      title: const Text("LifeLineCard"),
      titleTextStyle: const TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
      backgroundColor: ColorWidget.colorGreen100,
      shape: const OutlineInputBorder(borderSide: BorderSide(color: Colors.green, width: 0.5)),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}