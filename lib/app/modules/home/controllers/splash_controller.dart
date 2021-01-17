import 'package:get/get.dart';

class SplashController extends GetxController {
  @override 
  void onInit() {
    openLoginPage();

    super.onInit();
  }

  openLoginPage() async {
    await Future.delayed(Duration(seconds: 5));
    Get.offAllNamed('/presentation');
  }
}