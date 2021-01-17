import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackccr_profissionaliza_jovem/app/shared/utils.dart';

class InitiView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Utils.primaryColor,
        body: Stack(
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(height: 60.0),
                  Text(
                    'Escolha sua área',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                  SizedBox(height: 50.0),
                  Container(
                      width: 200.0,
                      height: 125.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Get.offAllNamed('/login');
                        },
                        child: Column(children: [
                          SizedBox(height: 10.0),
                          Image(
                            width: 75.0,
                            height: 75.0,
                            color: Utils.darkBlue,
                            image: AssetImage(student),
                          ),
                          Text('ALUNO',
                              style: TextStyle(
                                  color: Utils.darkBlue, fontSize: 20.0)),
                        ]),
                      )),
                  SizedBox(height: 50.0),
                  Container(
                      width: 200.0,
                      height: 125.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Column(children: [
                        SizedBox(height: 10.0),
                        Image(
                          width: 75.0,
                          height: 75.0,
                          color: Utils.yellowPrimary,
                          image: AssetImage(teacher),
                        ),
                        Text('PROFESSOR',
                            style: TextStyle(
                                color: Utils.yellowPrimary, fontSize: 20.0)),
                      ])),
                ],
              ),
            ),
            Positioned(
              bottom: 25.0,
              left: 25.0,
              right: 25.0,
              child: Container(
                width: 200.0,
                height: 70.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      'VOLTAR',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
