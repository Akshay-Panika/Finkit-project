
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import '../getx_controller/getx_bottomnav_controller.dart';
import '../screen_folder/home_screen.dart';
import '../screen_folder/lifelinecard_limit_screen.dart';
import '../screen_folder/lifelinecard_wallet_screen.dart';
import '../screen_folder/wallet_screen.dart';
import 'build_appbar.dart';


class BuildBottomNav extends StatelessWidget {

  BuildBottomNav({super.key,});

  final BottomNavGetXController bottomNavController = Get.put(BottomNavGetXController());

  final List<Widget> _screen = [
    HomeScreen(),
    LifelineCardLimitScreen(),
    WalletScreen(),
    LifelineCardWalletScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppbar(),
      body:  Expanded(child: Obx(() => _screen[bottomNavController.selectedIndex.value],)),


      // Bottom Navigation Bar
      bottomNavigationBar: MotionTabBar(
        tabBarHeight: 50,
        tabSize: 40,
        initialSelectedTab: "Home",
        labels: const ["Home", "Card Limit", "Wallet", "Wallet2"],
        icons: const [Icons.home, Icons.credit_card, Icons.wallet, Icons.wallet],
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