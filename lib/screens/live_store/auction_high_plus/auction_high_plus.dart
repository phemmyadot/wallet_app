import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:livecom/screens/live_store/marketing.dart';
import 'package:livecom/utils/app_colors.dart';
import 'package:livecom/utils/game_info.dart';
import 'package:livecom/widgets/app_bar.dart';
import 'package:livecom/widgets/count_down.dart';
import 'package:livecom/widgets/elevated_button.dart';
import 'package:livecom/widgets/product_info.dart';

class AuctionHighPlus extends StatefulWidget {
  const AuctionHighPlus({Key key}) : super(key: key);

  @override
  _AuctionHighPlusState createState() => _AuctionHighPlusState();
}

class _AuctionHighPlusState extends State<AuctionHighPlus>
    with TickerProviderStateMixin {
  ScrollController _scrollController =
      ScrollController(initialScrollOffset: 0.0);
  int quantity = 200;
  int minToken = 200;
  bool isActivated = false;
  bool isJoined = false;
  bool isCompleted = false;
  AnimationController _controller;
  int _endTime = 20;
  double _progressValue = 0.0;
  @override
  void initState() {
    int _start = 30;
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: _start));
    _controller.forward().then((value) {
      if (!isActivated) _complete();
    });
    initiateTimer(_controller, _start);
    setState(() {});
    super.initState();
  }

  Timer y;

  void _updateProgress() {
    const oneSec = const Duration(seconds: 1);
    y = new Timer.periodic(oneSec, (Timer t) {
      _endTime = _endTime - 1;

      _progressValue += 0.05;
      _progressValue = (_progressValue * pow(10, 2)).round() / pow(10, 2);

      print(_progressValue);
      if (_progressValue == 1.0) {
        t.cancel();
        setState(() {});
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    y.cancel();
    _controller.dispose();
    super.dispose();
  }

  _complete() {
    final start = 20;
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: start));
    _controller.forward().then((value) {
      _updateProgress();
      setState(() => isCompleted = true);
    });
    isActivated = true;
    initiateTimer(_controller, start);
    setState(() {});
  }

  void _join() {
    setState(() => isJoined = true);
    Future.delayed(Duration(seconds: 10)).then((value) => _complete());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181E28),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                SingleChildScrollView(
                  controller: _scrollController,
                  child: Column(
                    children: [
                      AuctionMarketing(),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          top: 10.0,
                          bottom: 70,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ProductInfo(
                              productName: 'Lorem ipsum dolor sit amet,',
                              specifications:
                                  'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed',
                              description:
                                  'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed',
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/share.png",
                                        color: null,
                                        fit: BoxFit.fill,
                                        width: 24.0,
                                        height: 26.0,
                                        colorBlendMode: BlendMode.dstATop,
                                      ),
                                      SizedBox(height: 10.17),
                                      Text(
                                        'Share',
                                        overflow: TextOverflow.visible,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          height: 1.125,
                                          fontSize: 12.0,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xffd7dde8),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 33.83),
                                  GestureDetector(
                                    onTap: () => GameInfo.getGameInfo(context,
                                        '''This is Game Mode description......
This is Game Mode description......
This is Game Mode description......
This is Game Mode description......
This is Game Mode description......
This is Game Mode description......
This is Game Mode description......
This is Game Mode description......
This is Game Mode description......'''),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/images/game_info.png",
                                          color: null,
                                          fit: BoxFit.fill,
                                          width: 13.28,
                                          height: 21.98,
                                          colorBlendMode: BlendMode.dstATop,
                                        ),
                                        SizedBox(height: 5.33),
                                        Text(
                                          'Game Info',
                                          overflow: TextOverflow.visible,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            height: 1.125,
                                            fontSize: 12.0,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xffd7dde8),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 20.0,
                  top: 56.0,
                  right: 12,
                  child: LAppBar(
                    balance: '500,000',
                    icon: Image.asset(
                      'assets/images/auction_high_plus.png',
                      width: 34,
                      height: 36.6,
                    ),
                    load: isCompleted
                        ? SizedBox()
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                isActivated
                                    ? 'Event begins in'
                                    : 'Loading Participants',
                                style: TextStyle(
                                  height: 1.125,
                                  fontSize: 16.0,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffd7dde8),
                                ),
                              ),
                              SizedBox(height: 5),
                              countdown,
                            ],
                          ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 169,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(0, 0, 0, 0).withOpacity(0.25),
                  offset: Offset(0, -5.0),
                  blurRadius: 20.0,
                ),
              ],
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xffFF4141),
                        Color(0xffFF4141).withOpacity(0.15),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: null,
                  right: 0,
                  bottom: 0,
                  height: 168,
                  child: Container(
                    padding: EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(0, 0, 0, 0).withOpacity(0.25),
                          offset: Offset(0, -5.0),
                          blurRadius: 20.0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        isCompleted
                            ? Column(
                                children: [
                                  LinearProgressIndicator(
                                    backgroundColor: Color(0xFF252C39),
                                    valueColor:
                                        new AlwaysStoppedAnimation<Color>(
                                            Color(0xFFFF4141)),
                                    value: _progressValue,
                                  ),
                                  SizedBox(height: 6),
                                ],
                              )
                            : SizedBox(),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    isCompleted
                                        ? 'Winner Pays'
                                        : 'Starting Price',
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      height: 1.125,
                                      fontSize: 12.0,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffd7dde8),
                                    ),
                                  ),
                                  SizedBox(height: 2.86),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/coin.png',
                                        width: 15,
                                        height: 15,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        '500',
                                        overflow: TextOverflow.visible,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          height: 1.125,
                                          fontSize: 16.0,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xffd7dde8),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 1.74),
                                  isCompleted
                                      ? Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/seller.png',
                                              height: 15,
                                              width: 15,
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              'UserName',
                                              overflow: TextOverflow.visible,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                height: 1.125,
                                                fontSize: 12.0,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xffd7dde8),
                                              ),
                                            ),
                                          ],
                                        )
                                      : SizedBox(),
                                  SizedBox(height: isCompleted ? 22 : 55.76),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      isCompleted
                                          ? Text(
                                              'Raise Amount: 200LT',
                                              overflow: TextOverflow.visible,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                height: 1.125,
                                                fontSize: 12.0,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff7889a9),
                                              ),
                                            )
                                          : SizedBox(),
                                      SizedBox(height: isCompleted ? 2 : 0),
                                      Text(
                                        'Participant: 300pax',
                                        overflow: TextOverflow.visible,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          height: 1.125,
                                          fontSize: 12.0,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff7889a9),
                                        ),
                                      ),
                                      SizedBox(height: 2),
                                      Text(
                                        'Shipping Fees: 50LT',
                                        overflow: TextOverflow.visible,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          height: 1.125,
                                          fontSize: 12.0,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff7889a9),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Cost Per Bid',
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      height: 1.125,
                                      fontSize: 12.0,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffd7dde8),
                                    ),
                                  ),
                                  SizedBox(height: 2.86),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/coin.png',
                                        width: 15,
                                        height: 15,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        '20',
                                        overflow: TextOverflow.visible,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          height: 1.125,
                                          fontSize: 16.0,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xffd7dde8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  isCompleted
                                      ? Column(
                                          children: [
                                            Text(
                                              'Ends In',
                                              overflow: TextOverflow.visible,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                height: 1.125,
                                                fontSize: 12.0,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xffd7dde8),
                                              ),
                                            ),
                                            SizedBox(height: 2.76),
                                            Text(
                                              '00:$_endTime',
                                              overflow: TextOverflow.visible,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                height: 1.125,
                                                fontSize: 16.0,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xffd7dde8),
                                              ),
                                            ),
                                          ],
                                        )
                                      : SizedBox(),
                                  SizedBox(height: isCompleted ? 25.86 : 60),
                                  InkWell(
                                    onTap: () =>
                                        isActivated || isJoined || isCompleted
                                            ? null
                                            : _join(),
                                    child: LCElevatedButton(
                                      background: isJoined && isCompleted
                                          ? 'assets/images/auction_high_btn.png'
                                          : isActivated ||
                                                  (!isJoined && isCompleted)
                                              ? 'assets/images/auction_high_grey_btn.png'
                                              : 'assets/images/auction_high_btn.png',
                                      text: isActivated || isCompleted
                                          ? 'BID NOW'
                                          : isJoined
                                              ? 'JOINED'
                                              : 'JOIN NOW',
                                    ),
                                  ),
                                  SizedBox(height: 9.68),
                                  Text(
                                    '300 people eyeing this',
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      height: 1.125,
                                      fontSize: 12.0,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff7889a9),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
