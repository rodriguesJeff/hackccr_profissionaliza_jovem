import 'package:get/get.dart';
import 'package:hackccr_profissionaliza_jovem/app/modules/home/controllers/splash_controller.dart';

class SplashBinding implements Bindings {
  @override 
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}