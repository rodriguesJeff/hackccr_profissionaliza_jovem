import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hackccr_profissionaliza_jovem/app/shared/utils.dart';

class SplashView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.primaryColor,
      body: Center(
        child: CircleAvatar(
          minRadius: MediaQuery.of(context).size.width * 0.8,
          child: SvgPicture.asset(
            Images.logo,
          ),
        ),
      ),
    );
  }
}
