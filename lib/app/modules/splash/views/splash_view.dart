import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackccr_profissionaliza_jovem/app/modules/splash/controller/splash_controller.dart';
import 'package:hackccr_profissionaliza_jovem/app/shared/utils.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: Utils.primaryColor,
          body: Center(
            child: Container(
              width: 300.0,
              height: 300.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(300.0),
                color: Colors.white,
              ),
              child: SizedBox(
                height: 150.0,
                width: 150.0,
                child: Image(
                  image: AssetImage(logo),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
