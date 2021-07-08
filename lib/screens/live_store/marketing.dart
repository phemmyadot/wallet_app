import 'dart:async';

import 'package:flutter/material.dart';

class AuctionMarketing extends StatefulWidget {
  const AuctionMarketing({
    Key key,
  }) : super(key: key);

  @override
  _AuctionMarketingState createState() => _AuctionMarketingState();
}

class _AuctionMarketingState extends State<AuctionMarketing> {
  int _currentPage = 0;
  final images = [
    'assets/images/annoucement_1.png',
    'assets/images/annoucement_2.png',
    'assets/images/annoucement_1.png',
  ];
  PageController _pageController = PageController(
    initialPage: 0,
  );

  Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
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
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 364,
      child: PageView(
        controller: _pageController,
        children: [
          for (int i = 0; i < 3; i++) _getBanner(),
        ],
      ),
    );
  }

  Widget _getBanner() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 338,
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
          height: 365.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.5, 0.9],
              colors: [Color(0xff181E28).withOpacity(0), Color(0xff181E28)],
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
                child: Container(width: 18, height: 5, child: Image.asset('assets/images/banner_inactive.png')),
              ),
              SizedBox(width: 5),
              Container(width: 27, height: 5, child: Image.asset('assets/images/banner_active.png')),
              SizedBox(width: 5),
              InkWell(
                onTap: () => null,
                child: Container(width: 18, height: 5, child: Image.asset('assets/images/banner_inactive.png')),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
