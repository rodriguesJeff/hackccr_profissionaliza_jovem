import 'package:flutter/material.dart';

import 'pages/page_end.dart';
import 'pages/page_init.dart';
import 'pages/page_mid.dart';

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