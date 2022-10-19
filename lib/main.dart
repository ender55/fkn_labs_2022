import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> heroList = [
    'https://i.pinimg.com/736x/13/14/83/1314833cb054efc2418b50f946927daf.jpg',
    'https://i.pinimg.com/originals/f9/6a/2b/f96a2b05cf23883ad4e3a82f70780465.jpg',
    'https://w0.peakpx.com/wallpaper/287/473/HD-wallpaper-captain-america-mqvel.jpg',
    'https://i.pinimg.com/736x/24/43/03/2443035d07daea1929031c5701c85cef.jpg',
    'https://wallpaperaccess.com/full/621124.jpg',
    'https://wallsbazar.com/wp-content/uploads/2021/10/Thor-Wallpaper-1.jpg',
    'https://c4.wallpaperflare.com/wallpaper/191/235/664/thanos-avengers-infinity-war-4k-wallpaper-preview.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  child: Transform.scale(
                    scale: 0.3,
                    child: Image.network(
                        'https://raw.githubusercontent.com/effectiveband/fkn_labs_2022/main/Images/marvel.png'),
                  )),
              Container(
                alignment: Alignment.center,
                child: const FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text('Choose your hero',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: CarouselSlider(
                    options: CarouselOptions(
                        height: 500,
                        enlargeCenterPage: true, enableInfiniteScroll: false),
                    items: heroList
                        .map(
                          (value) =>
                              Stack(fit: StackFit.expand, children: <Widget>[
                            Container(
                              alignment: Alignment.center,
                              child: Image.network(
                                value,
                                //width: 2000,
                                //height: 5000,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              child: const Text('data',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            )
                          ]),
                        )
                        .toList()),
              )
              //MarvelLogoWidget(),
              //FittedBox(
              //    fit: BoxFit.fitWidth,
              //    child: Padding(
              //        padding: EdgeInsets.only(left: 0, right: 0),
              //        child: Text('Choose your hero',
              //            style: TextStyle(
              //                fontSize: 30,
              //                fontWeight: FontWeight.bold,
              //                color: Colors.white)))),
              //MyStatelessWidget()
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
    return Center(
        child: Transform.scale(
            scale: 0.3,
            child: Image.network(
              'https://raw.githubusercontent.com/effectiveband/fkn_labs_2022/main/Images/marvel.png',
              fit: BoxFit.contain,
            )));
  }
}
