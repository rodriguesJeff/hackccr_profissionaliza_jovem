import 'package:flutter/material.dart';
import 'package:hackccr_profissionaliza_jovem/app/modules/home/views/pages/page_end.dart';
import 'package:hackccr_profissionaliza_jovem/app/modules/home/views/pages/page_mid.dart';

import 'pages/page_init.dart';

class PresentationView extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return _buildingPageView();
  }
}


_buildingPageView() {
  return PageView(
    children: [
      PageInitView(),
      PageMidView(),
      PageEndView(),
    ],
  );
}