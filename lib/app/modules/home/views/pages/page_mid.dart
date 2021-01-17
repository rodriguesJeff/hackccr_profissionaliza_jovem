import 'package:flutter/material.dart';
import 'package:hackccr_profissionaliza_jovem/app/shared/utils.dart';

class PageMidView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.primaryColor,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 50.0),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Cursos com enfoque em:',
                    style: TextStyle(fontSize: 25.0, color: Colors.white)),
                SizedBox(height: 30.0),
                Text('HARD SKILLS', style: TextStyle(fontSize: 15.0, color: Colors.white)),
                SizedBox(height: 15.0),
                Text(
                  'As hard skills  são as habilidades que\npodem ser facilmente aprendidas (e\nensinadas) por meio de cursos.\n(ex.: cursos técnicos; conhecimento na\noperação de máquinas e ferramentas,\nhabilidades ligadas à informática.)',
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                ),
                SizedBox(height: 30.0),
                Text('SOFT SKILLS', style: TextStyle(fontSize: 15.0, color: Colors.white)),
                SizedBox(height: 15.0),
                Text(
                  'As soft skills são habilidades\nsociocomportamentais, ligadas\ndiretamente às aptidões mentais de um\ncandidato e à capacidade de lidar\npositivamente com fatores emocionais.\n(ex.: comunicação interpessoal;\ncapacidade de persuasão;\nproatividade; resolução de conflitos;\ncapacidade de trabalhar sob pressão;\nsenso de liderança; capacidade analítica.',
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                )
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
