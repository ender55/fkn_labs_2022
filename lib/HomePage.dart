import 'package:flutter/material.dart';

import 'HeroScrollPanel.dart';
import 'TopBarWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black87,
          body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                TopBarWidget(),
                HeroScrollPanel(),
              ]),
        ),
      ),
    );
  }
}
