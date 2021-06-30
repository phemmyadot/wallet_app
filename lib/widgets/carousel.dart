import 'dart:async';

import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key key}) : super(key: key);

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int _currentPage = 0;
  final images = [
    'assets/images/annoucement_1.png',
    'assets/images/annoucement_2.png',
    'assets/images/annoucement_1.png',
  ];
  PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: new AssetImage(images[0]),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: new AssetImage(images[1]),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: new AssetImage(images[2]),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
