import 'package:flutter/material.dart';
import 'package:hackccr_profissionaliza_jovem/app/shared/utils.dart';

class PageInitView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.primaryColor,
      body: Stack(
        children: [
          Positioned(
            top: 25.0,
            right: 10.0,
            left: 10.0,
            child: Text(
              'Profissionaliza Jovem é\num projeto que oferece\ncursos  de capacitação\nprofissional para jovens\nque necessitam ingressar\nno mercado de trabalho.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: GestureDetector(
              onTap: () {},
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
