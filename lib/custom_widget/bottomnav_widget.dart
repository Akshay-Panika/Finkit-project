
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import '../getx_controller/getx_bottomnav_controller.dart';
import '../screen_folder/home_screen.dart';
import 'appbar_widget.dart';


class BottomNavWidget extends StatelessWidget {

  BottomNavWidget({super.key,});

  final BottomNavGetXController bottomNavController = Get.put(BottomNavGetXController());

  final List<Widget> _screen = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(),
      body:  Expanded(child: Obx(() => _screen[bottomNavController.selectedIndex.value],)),


      // Bottom Navigation Bar
      bottomNavigationBar: MotionTabBar(
        tabBarHeight: 50,
        tabSize: 40,
        initialSelectedTab: "Home",
        labels: const ["Home", "Home", "Home"],
        icons: const [Icons.home, Icons.home, Icons.home],
        textStyle: const TextStyle(color: Colors.black,fontSize: 13),
        tabSelectedColor: Colors.black54,
        tabIconColor: Colors.grey,
        onTabItemSelected: (int index) {
          // Handle tab switch logic
          bottomNavController.onSelectIndex(index);
        },
      ),
    );
  }
}