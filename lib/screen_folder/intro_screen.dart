import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

import '../data_folder/intro_data.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.toInt();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Intro card
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: introData.length, // Set the number of pages
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Lottie.asset(introData[index]['image'].toString()),
                    Text(introData[index]['descText'].toString(),style: const TextStyle(color: Colors.black54, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                );
              },
            ),
          ),

          // Bottom controls
          SizedBox(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Intro card controller (page indicators)
                SizedBox(
                  height: 6,
                  width: 100,
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: _currentPage == index ? 30 : 10,
                        decoration: BoxDecoration(
                          color: _currentPage == index ? Colors.black54 : Colors.grey,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      );
                    },
                  ),
                ),
                const Text(
                  'Swipe right',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                // Arrow icon for navigation
                SizedBox(width: 100,
                  child: InkWell(
                      onTap: () {
                        if (_currentPage < 2) {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeInOut,
                          );
                        }
                        Get.offNamed('/bottomNavWidget');
                      },
                      child: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationY(3.14159), // 3.14159 radians is π, which flips horizontally
                        child: Image.asset('assets/images/errowImg.png', color: Colors.black54, height: 25,),
                      )
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
