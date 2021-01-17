import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackccr_profissionaliza_jovem/app/shared/utils.dart';

class RegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Utils.primaryColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 40.0),
              Text('CADASTRO',
                  style: TextStyle(color: Colors.white, fontSize: 30.0)),
              SizedBox(height: 20.0),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.67,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10.0),
                        Text('Nome completo',
                            style:
                                TextStyle(color: Utils.darkBlue, fontSize: 15.0)),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Utils.primaryColor),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text('CPF',
                            style:
                                TextStyle(color: Utils.darkBlue, fontSize: 15.0)),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Utils.primaryColor),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text('Email',
                            style:
                                TextStyle(color: Utils.darkBlue, fontSize: 15.0)),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Utils.primaryColor),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text('Senha',
                            style:
                                TextStyle(color: Utils.darkBlue, fontSize: 15.0)),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Utils.primaryColor),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text('Repetir senha',
                            style:
                                TextStyle(color: Utils.darkBlue, fontSize: 15.0)),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Utils.primaryColor),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5.0),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Utils.greenAction,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Center(child: Text('CADASTRAR', style: TextStyle(color: Colors.white, fontSize: 20.0))),
                ),
              ),
              SizedBox(height: 5.0),
              GestureDetector(
                onTap: () {Get.offAllNamed('/login');},
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: 50.0,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Center(child: Text('VOLTAR', style: TextStyle(color: Colors.white, fontSize: 20.0))),
                ),
              ),
            ],
          ),
        ));
  }
}
