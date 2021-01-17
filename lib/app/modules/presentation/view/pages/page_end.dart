import 'package:flutter/material.dart';
import 'package:hackccr_profissionaliza_jovem/app/shared/utils.dart';

class PageEndView extends StatelessWidget {
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
                  width: 300.0,
                  height: 250.0,
                  image: AssetImage(image2),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Com o projeto, o jovem\npoderá',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
                SizedBox(height: 30),
                ListTile(
                  leading: Icon(Icons.check_circle, color: Colors.white),
                  title: Text(
                    'Receber orientações de carreiras durante o curso;',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.check_circle, color: Colors.white),
                  title: Text(
                    'Participar de programas de estágio;',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.check_circle, color: Colors.white),
                  title: Text(
                    'Participar de eventos , palestras e feiras. ',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 15.0,
            right: 10.0,
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
