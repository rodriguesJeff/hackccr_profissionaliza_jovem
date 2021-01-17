import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackccr_profissionaliza_jovem/app/shared/utils.dart';

class PageInitView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.primaryColor,
      body: Stack(        
        children: [
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  width: 200.0,
                  height: 200.0,
                  image: AssetImage(image1),
                ),
                SizedBox(height: 25.0),
                Text(
                  'Profissionaliza Jovem é\num projeto que oferece\ncursos  de capacitação\nprofissional para jovens\nque necessitam ingressar\nno mercado de trabalho.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 15.0,
            right: 10.0,
            child: GestureDetector(
              onTap: () {
                Get.offAllNamed('/init');
              },
              child: Text(
                'Pular',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
