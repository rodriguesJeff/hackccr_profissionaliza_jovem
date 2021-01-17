import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hackccr_profissionaliza_jovem/app/shared/utils.dart';

class LoginView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.primaryColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 30.0),
              Image(
                width: 150.0,
                height: 150.0,
                image: AssetImage(logo),
              ),
              SizedBox(height: 20.0),
              Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.7,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'LOGIN',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Utils.darkBlue),
                        ),
                        SizedBox(height: 10.0),
                        TextFormField(                       
                          decoration: InputDecoration(                          
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Image(
                                width: 20.0,
                                height: 20.0,
                                image: AssetImage(profile),
                              ),
                            ),
                            hintText: 'Informe seu RA, CPF ou Email',
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Utils.darkBlue),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 10.0),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(                          
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Image(
                                width: 20.0,
                                height: 20.0,
                                image: AssetImage(pass),
                              ),
                            ),
                            hintText: 'Senha',
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Utils.darkBlue),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                          child: Text('Esqueceu a senha?', style: TextStyle(fontSize: 10.0, color: Utils.greyMid)),
                        ),
                        Container(
                          width: 300.0,
                          height: 55.0,
                          decoration: BoxDecoration(
                            color: Utils.greenAction,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(child: Text('ENTRAR', style: TextStyle(color: Colors.white, fontSize: 20.0))),
                        ),
                        SizedBox(height: 10.0),
                        Center(child: Text('OU', style: TextStyle(color: Utils.darkBlue, fontSize: 25.0))),
                        Row(
                          children: [
                            Image(
                              width: 30.0,
                              height: 30.0,
                              image: AssetImage(facebook),
                            ),
                            SizedBox(width: 10.0),
                            Text('Entrar com a conta do Facebook', style: TextStyle(color: Utils.darkBlue)),
                          ]
                        ),
                        SizedBox(height: 5.0),
                        Row(
                          children: [
                            Image(
                              width: 30.0,
                              height: 30.0,
                              image: AssetImage(google),
                            ),
                            SizedBox(width: 10.0),
                            Text('Entrar com a conta do Google', style: TextStyle(color: Utils.primaryColor)),
                          ]
                        ),
                        SizedBox(height: 10.0),
                        Divider(height: 6, color: Utils.greyDark),
                        SizedBox(height: 10.0),
                        GestureDetector(
                          onTap: () {Get.toNamed('/register');},
                          child: Container(
                            width: 300.0,
                            height: 55.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Utils.darkBlue,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(child: Text('CADASTRAR', style: TextStyle(color: Utils.darkBlue, fontSize: 20.0))),
                          ),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
