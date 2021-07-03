import 'dart:async';

import 'package:flutter/material.dart';
import 'package:livecom/utils/svg.dart';

class BidFastHeader extends StatefulWidget {
  const BidFastHeader({Key key}) : super(key: key);

  @override
  _BidFastHeaderState createState() => _BidFastHeaderState();
}

class _BidFastHeaderState extends State<BidFastHeader> {
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
      child: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: [
              for (int i = 0; i < 3; i++) _getBanner(),
            ],
          ),
          Positioned(
            left: 24.0,
            top: 56.0,
            right: 23.64,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(102, 0, 0, 0),
                            offset: Offset(5.0, 5.0),
                            blurRadius: 20.0,
                          ),
                          BoxShadow(
                            color: Color.fromARGB(76, 80, 93, 116),
                            offset: Offset(-7.0, -7.0),
                            blurRadius: 20.0,
                          )
                        ],
                      ),
                      child: InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Stack(
                          children: [
                            SvgWidget(painters: [
                              SvgPathPainter.fill()
                                ..addPath(
                                    'M0 20C0 8.9543 8.9543 0 20 0C31.0457 0 40 8.9543 40 20C40 31.0457 31.0457 40 20 40C8.9543 40 0 31.0457 0 20Z')
                                ..setLinearGradient(
                                  startX: -16.31578763184293,
                                  startY: -8.421051121608452,
                                  endX: 33.68420681303728,
                                  endY: 43.68420636996503,
                                  colors: [
                                    Color.fromARGB(255, 80, 93, 116),
                                    Color.fromARGB(255, 24, 29, 40)
                                  ],
                                  colorStops: [0.0, 1.0],
                                ),
                            ]),
                            Center(
                                child: Container(
                                    height: 12.53,
                                    width: 9.02,
                                    child:
                                        Image.asset('assets/images/back.png')))
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 46.0,
                      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color.fromARGB(153, 0, 0, 0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '''Wallet Balance''',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              height: 1.3999999364217122,
                              fontSize: 12.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 215, 221, 232),

                              /* letterSpacing: 0.0, */
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/coin.png',
                                width: 15,
                                height: 15,
                              ),
                              SizedBox(width: 5),
                              FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text('''500,000''',
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      height: 1,
                                      fontSize: 16.0,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromARGB(255, 215, 221, 232),
                                    )),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        width: 30,
                        height: 30,
                        child: Image.asset('assets/images/e_commerce.png')),
                  ],
                )
              ],
            ),
          )
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
