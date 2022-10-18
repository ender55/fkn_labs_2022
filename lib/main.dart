import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: Column(children: const <Widget>[
          MarvelLogoWidget(),
          FittedBox(
              fit: BoxFit.fitWidth,
              child: Padding(
                  padding: EdgeInsets.only(left: 0, right: 0),
                  child: Text('Choose your hero',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)))),
          //HeroScrollerWidget()
        ]),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      controller: controller,
      children: const <Widget>[
        Center(
          child: Text(
            'First Page',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Center(
          child: Text(
            'Second Page',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Center(
          child: Text(
            'Third Page',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

class MarvelLogoWidget extends StatelessWidget {
  const MarvelLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Transform.scale(
          scale: 0.3,
          child: Image.network(
              'https://raw.githubusercontent.com/effectiveband/fkn_labs_2022/main/Images/marvel.png')),
    );
  }
}

class HeroScrollerWidget extends StatelessWidget {
  const HeroScrollerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      controller: controller,
      children: const <Widget>[
        Center(
          child: Text('First Page'),
        ),
        Center(
          child: Text('Second Page'),
        ),
        Center(
          child: Text('Third Page'),
        ),
      ],
    );
  }
}
