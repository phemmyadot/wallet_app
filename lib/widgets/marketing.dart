import 'dart:async';

import 'package:flutter/material.dart';
import 'package:livecom/widgets/appbar.dart';

class Header extends StatefulWidget {
  const Header({Key key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
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
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      width: double.infinity,
      height: 312.0 - 44 + statusBarHeight,
      child: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: [
              for (int i = 0; i < 3; i++)
                _getBanner('''LIVE STORE''', statusBarHeight),
            ],
          ),
          Positioned(
            left: 24.0,
            top: 12.0 + statusBarHeight,
            right: 23.64,
            child: LCAppbar(),
          )
        ],
      ),
    );
  }

  Widget _getBanner(String text, double statusBarHeight) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 313.0 - 44 + statusBarHeight,
          child: ClipRRect(
            borderRadius: BorderRadius.zero,
            child: Image.asset(
              "assets/images/banner.png",
              color: null,
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.dstATop,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 313.0 - 44 + statusBarHeight,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.5296, 0.9743],
              colors: [Color(0xff181E28).withOpacity(0), Color(0xff181E28)],
            ),
          ),
        ),
        Positioned(
          left: 21.0,
          top: null,
          right: null,
          bottom: 70.0,
          width: 205.0,
          height: 26.0,
          child: Text(
            text,
            overflow: TextOverflow.visible,
            textAlign: TextAlign.left,
            style: TextStyle(
              height: 1.0,
              fontSize: 30.0,
              fontFamily: 'BebasNeue',
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 215, 221, 232),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => null,
                child: Container(
                    width: 18,
                    height: 5,
                    child: Image.asset('assets/images/banner_inactive.png')),
              ),
              SizedBox(width: 5),
              Container(
                  width: 27,
                  height: 5,
                  child: Image.asset('assets/images/banner_active.png')),
              SizedBox(width: 5),
              InkWell(
                onTap: () => null,
                child: Container(
                    width: 18,
                    height: 5,
                    child: Image.asset('assets/images/banner_inactive.png')),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
