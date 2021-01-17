import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:hackccr_profissionaliza_jovem/app/modules/home/controllers/home_controller.dart';
import 'package:hackccr_profissionaliza_jovem/app/shared/utils.dart';

class HomeView extends GetView<HomeController> {
  final GlobalKey expansionTile = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.primaryColor,
      bottomNavigationBar: _bottomNavigationBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  minRadius: 45.0,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(user),
                ),
                Column(
                  children: [
                    Text(
                      'Pedro José Silva',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    Text(
                      'R.A: 123456-7',
                      style: TextStyle(color: Colors.white, fontSize: 15.0),
                    ),
                  ],
                ),
                Image(
                  width: 30.0,
                  height: 30.0,
                  image: AssetImage(chat),
                ),
                Image(
                  width: 30.0,
                  height: 30.0,
                  image: AssetImage(options),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Container(
              alignment: Alignment.topLeft,
              child: Text('Bem Vindo!',
                  style: TextStyle(fontSize: 25.0, color: Colors.white)),
            ),
            SizedBox(height: 15.0),
            Container(
              alignment: Alignment.topLeft,
              child: Text('Cursos!',
                  style: TextStyle(fontSize: 20.0, color: Colors.white)),
            ),
            SizedBox(height: 10.0),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: ExpansionTile(
                key: expansionTile,
                title: Text('Selecione'),
                backgroundColor: Colors.white,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15.0),
                    alignment: Alignment.topLeft,
                    child:
                        Text('Hard Skills', style: TextStyle(fontSize: 20.0)),
                  ),
                  ListTile(
                    title: Text('Empreendedorismo e gestão de negócios',
                        style: TextStyle(fontSize: 15.0)),
                  ),
                  ListTile(
                    title: Text('Comunicação e Web Design',
                        style: TextStyle(fontSize: 15.0)),
                  ),
                  ListTile(
                    title: Text('Automação industrial',
                        style: TextStyle(fontSize: 15.0)),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15.0),
                    alignment: Alignment.topLeft,
                    child:
                        Text('Soft Skills', style: TextStyle(fontSize: 20.0)),
                  ),
                  ListTile(
                    title: Text('Liderança', style: TextStyle(fontSize: 15.0)),
                  ),
                  ListTile(
                    title: Text('Inteligência emocial',
                        style: TextStyle(fontSize: 15.0)),
                  ),
                  ListTile(
                    title: Text('Criatividade e resolução de problemas',
                        style: TextStyle(fontSize: 15.0)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              alignment: Alignment.topLeft,
              child: Text('Meus Atalhos!',
                  style: TextStyle(fontSize: 20.0, color: Colors.white)),
            ),
            SizedBox(height: 10.0),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 100.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.description,
                          size: 40.0, color: Utils.greyDark),
                      Text('Notas'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.event_note, size: 40.0, color: Utils.greyDark),
                      Text('Calendário'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.perm_contact_calendar,
                          size: 40.0, color: Utils.greyDark),
                      Text('Carteirinha'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.menu_book, size: 40.0, color: Utils.greyDark),
                      Text('Notas'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              alignment: Alignment.topLeft,
              child: Text('Meus compromissos!',
                  style: TextStyle(fontSize: 20.0, color: Colors.white)),
            ),
            SizedBox(height: 10.0),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 110.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topRight,
                    child: Text('Hoje 15/01/2021',
                        style:
                            TextStyle(color: Utils.greyDark, fontSize: 10.0)),
                  ),
                  Container(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.event_busy, size: 25.0),
                        SizedBox(width: 10.0),
                        Text('Sem compromissos para hoje!'),
                      ],
                    ),
                  ),
                  Divider(height: 6, color: Utils.greyDark),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20.0),
                      Text('Palestra - Empatia'),
                      SizedBox(width: 20.0),
                      Text('02/03/2021'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Image(
              width: MediaQuery.of(context).size.width * 0.7,
              image: AssetImage(banner),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _bottomNavigationBar() {
  return BottomNavigationBar(
    currentIndex: 1,
    onTap: null,
    items: [
      BottomNavigationBarItem(
          icon: Image(
            width: 30.0,
            height: 30.0,
            image: AssetImage(home),
          ),
          label: 'Início'),
      BottomNavigationBarItem(
        icon: Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Image(
            width: 40.0,
            height: 40.0,
            image: AssetImage(student),
          ),
        ),
        label: 'Meus Cursos',
      ),
      BottomNavigationBarItem(
        icon: Image(
          width: 30.0,
          height: 30.0,
          image: AssetImage(books),
        ),
        label: 'Disciplinas',
      ),
      BottomNavigationBarItem(
        icon: Image(
          width: 30.0,
          height: 30.0,
          image: AssetImage(sine),
        ),
        label: 'Notificações',
      ),
    ],
  );
}
