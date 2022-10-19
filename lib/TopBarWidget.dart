import 'package:flutter/material.dart';

import 'ChooseHeroTitleWidget .dart';
import 'MarvelLogoWidget.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({super.key});

  @override
  Widget build(BuildContext context) => Container(
        child: Column(children: const <Widget>[
          MarvelLogoWidget(),
          ChooseHeroTitleWidget(),
        ]),
      );
}
