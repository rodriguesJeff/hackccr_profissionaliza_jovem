import 'package:get/get.dart';

class SplashController extends GetxController {
  openPresentationPage() async {
    await Future.delayed(Duration(seconds: 2));
    Get.offAllNamed('/presentation');
  }
  
  @override 
  void onInit() {
    openPresentationPage();

    super.onInit();
  }
}