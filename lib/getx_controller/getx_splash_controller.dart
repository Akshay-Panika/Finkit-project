import 'package:get/get.dart';

class GetXSplashController extends GetxController{
  @override
  void onInit() {
    super.onInit();
    _navigateToHome();
  }

  void _navigateToHome()async{
    await Future.delayed(const Duration(seconds: 3));
    Get.offNamed('/introScreen');
  }
}